use QuanLyDiemThi;

create table hocsinh(
	mahs varchar(20) primary key,
    tenhs varchar(50) not null,
    ngaysinh datetime not null,
    lop varchar(20) not null,
    gt varchar(20) not null
);

create table giaovien(
	magv varchar(20) primary key,
    tengv varchar(50) not null,
    sdt varchar(10) not null
);

create table monhoc(
	mamh varchar(20) primary key,
    tenmh varchar(50),
    magv varchar(20),
    foreign key (magv) references giaovien(magv)
);

create table bangdiem(
	mahs varchar(20),
    mamh varchar(50),
    diemthi int not null,
    ngaykt datetime not null,
    primary key (mahs, mamh),
    foreign key (mahs) references hocsinh(mahs),
    foreign key (mamh) references monhoc(mamh)
);