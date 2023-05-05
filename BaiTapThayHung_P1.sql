-- 1. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã sinh viên tăng dần
USE QuanLyDiemSV;
SELECT MaSV, HoSV, TenSV, HocBong FROM dmsv ORDER BY MaSV ASC;

-- 2. Danh sách Mã SV, Họ Tên SV, Phái, Ngày Sinh. Sắp xếp theo thứ tự Nam/Nữ
SELECT MaSV, CONCAT(HoSV , " " , TenSV) AS "Họ Tên SV", Phai, NgaySinh FROM dmsv ORDER BY Phai ASC;

-- 3. Họ tên sinh viên, Ngày sinh, Học bổng. Thông tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
SELECT CONCAT(HoSV , " " , TenSV) AS "Họ Tên SV", NgaySinh, HocBong FROM dmsv ORDER BY NgaySinh ASC, NgaySinh DESC;

-- 4. Danh sách các môn bắt đầu bằng chữ T. Mã môn, tên môn, số tiết
SELECT * FROM DMMH WHERE TenMH LIKE "T%";

-- 5. Danh sách sinh viên có chữ cái cuối trong tên là I, họ tên sinh viên, Ngày sinh, Phái
SELECT CONCAT(HoSV , " " , TenSV) AS "Họ Tên SV",  NgaySinh, Phai  FROM dmsv WHERE TenSV LIKE "%I";

-- 6. Danh sách khoa có kí tự thứ 2 của tên khoa có chứa chữ N, gồm Mã Khoa và tên Khoa
SELECT * FROM DMKhoa WHERE SUBSTR(TenKhoa, 2, 1) LIKE "N";

-- 7. Liệt kê sinh viên mà họ có chứa chữ Thị
SELECT * FROM dmsv WHERE HoSV LIKE "%Thị%";

-- 8. danh sách các sinh viên có học bổng lớn hơn 100,000, Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. sắp xếp theo thứ tự Mã khoa giảm dần
SELECT MaSV, CONCAT(HoSV , " " , TenSV) AS "Họ Tên SV", MaKhoa, HocBong FROM dmsv WHERE HocBong > 100000;

-- 9. sinh viên học bổng > 150000 và sinh ở HN. Họ tên SV, Mã khoa, Nơi sinh,  Học bổng
SELECT CONCAT(HoSV , " " , TenSV) AS "Họ Tên SV", MaKhoa, NoiSinh, HocBong FROM dmsv WHERE HocBong > 150000 AND NoiSinh LIKE "Hà Nội";

-- 10. Sinh viên khoa Anh Văn, Vật Lí: Mã SV, Mã Khoa, Phái
SELECT MaSV, MaKhoa, Phai FROM dmsv WHERE MaKhoa = "AV" OR MaKhoa = "VL";

-- 11. Sinh viên có ngày sinh từ 1/1/1991 -> 05/06/1992. Mã SV, Ngày sinh, nơi sinh, học bổng
SELECT MaSV, NgaySinh, NoiSinh, HocBong FROM dmsv WHERE NgaySinh BETWEEN "1991-01-01" AND "1992-06-05";

-- 12. Sinh viên học bổng từ 80000 -> 150000: MaSV, NgaySinh, Phai, MaKhoa
SELECT MaSV, NgaySinh, Phai, MaKhoa FROM dmsv WHERE HocBong > 80000 AND HocBong < 150000;

-- 13. Những môn học có số tiết lớn hơn 30 và nhỏ hơn 45. MaMH, TenMH, Số tiết
SELECT * FROM DMMH WHERE SoTiet > 30 AND SoTiet < 45;

-- 14. Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
SELECT s.MaSV, CONCAT(HoSV , " " , TenSV) AS "Họ Tên SV", k.TenKhoa, s.Phai FROM dmsv s 
JOIN DMKhoa k ON k.MaKhoa = s.MaKhoa;



