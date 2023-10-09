# show databases;
use dddd;
create table if not exists emp(
id int comment '编号',
workno varchar(10) comment '工号',
name_ varchar(10) comment '姓名',
gender char(1) comment '性别',
age tinyint unsigned comment '年龄',
idcard char(18) comment '身份证号',
workaddress varchar(50) comment '工作地址',
entrydate date comment '入职时间'
)comment '员工表';

insert into emp (id, workno, name_, gender, age, idcard, workaddress, entrydate)
values (1, '1', '柳岩', '女', 20, '123456789012345678', '北京', '2000-01-01'),
       (2, '2', '张无忌', '男', 18, '123456789012345670', '北京', '2005-09-01'),
       (3, '3', '韦一笑', '男', 38, '123456789712345670', '上海', '2005-08-01'),
       (4, '4', '赵敏', '女', 18, '123456757123845670', '北京', '2009-12-01'),
       (5, '5', '小昭', '女', 16, '123456769012345678', '上海', '2007-07-01'),
       (6, '6', '杨晓', '男', 28, '12345678931234567X', '北京', '2006-01-01'),
       (7, '7', '范瑶', '男', 40, '123456789255534670', '北京', '2005-05-01'),
       (8, '8', '黛绮丝', '女', 38, '123456757155555670', '天津', '2006-06-01'),
       (9, '9', '樊亮亮', '男', 88, '123456757123843330', '北京', '2004-06-15'),
       (10, '10', '陈友谅', '男', 58, '123456766666645670', '上海', '2005-03-11'),
       (11, '11', '张书', '男', 28, '123456956395456704', '江苏', '2002-02-01'),
       (12, '12', '长云', '男', 16, '123456700074845670', '北京', '2003-11-01'),
       (13, '13', '章三根', '男', 28, '123458563853845670', '江苏', '2002-12-01'),
       (14, '14', '灭绝', '女', 14, '123452649423845670', '西安', '2006-10-01'),
       (15, '15', '胡青牛', '女', 15, '123456746387445670', '西安', '2005-05-01'),
       (16, '16', '赵支付', '女', 32, null, '北京', '2012-06-01');
select * from emp;

# 2 查询指定字段nam_，workno，age 返回
select name_, workno, age from emp;

# 3、4 查询所有字段返回
select id, workno, name_, gender, age, idcard, workaddress, entrydate from emp;
select * from emp;

# 5、6 查询所有员工工作地址，并起别名
select workaddress as '工作地址' from emp;
select workaddress '工作地址' from emp;

# 7 查询公司员工的上班地址（不要重复）
select distinct workaddress from emp; 

# 8 查询年龄等于18的员工
SELECT * FROM emp WHERE age = 18;

# 9 查询年龄小于20的员工信息
SELECT * FROM emp WHERE age < 20;

# 10 年龄小于等于20的员工信息
SELECT * FROM emp WHERE age <= 20;

# 11 查询没有身份证的员工信息
SELECT * FROM emp WHERE idcard IS NULL;

# 12 查询有身份证的员工信息
SELECT * FROM emp WHERE idcard IS NOT NULL;

# 13 查询年龄不等于20的员工信息
SELECT * FROM emp WHERE age != 20;

# 14、15 查询年龄在15(包含)到40(包含)之间的员工信息
SELECT * FROM emp WHERE age >= 15 && age <= 40;
SELECT * FROM emp WHERE age BETWEEN 15 AND 40;

# 16 查询性别为女且年龄小于25的员工信息
SELECT * FROM emp WHERE gender = '女' AND age < 25;

# 17、18 查询年龄等于18或20或40的员工信息
SELECT * FROM emp WHERE age=18 || age=20 || age=40;
SELECT * FROM emp WHERE age in(18,20,40);

# 19 查询姓名为两个字的员工信息
SELECT * FROM emp WHERE name_ LIKE '__';

# 20、21 查询身份证号最后一位是x的员工信息
SELECT * FROM emp WHERE idcard LIKE '%X';
SELECT * FROM emp WHERE idcard LIKE '_________________X';

drop table emp;
