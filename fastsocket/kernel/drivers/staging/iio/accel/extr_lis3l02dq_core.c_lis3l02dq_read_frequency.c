
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s8 ;


 int LIS3L02DQ_DEC_MASK ;
 int LIS3L02DQ_REG_CTRL_1_ADDR ;




 int lis3l02dq_spi_read_reg_8 (struct device*,int ,int *) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t lis3l02dq_read_frequency(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 int ret, len = 0;
 s8 t;
 ret = lis3l02dq_spi_read_reg_8(dev,
           LIS3L02DQ_REG_CTRL_1_ADDR,
           (u8 *)&t);
 if (ret)
  return ret;
 t &= LIS3L02DQ_DEC_MASK;
 switch (t) {
 case 131:
  len = sprintf(buf, "280\n");
  break;
 case 129:
  len = sprintf(buf, "560\n");
  break;
 case 130:
  len = sprintf(buf, "1120\n");
  break;
 case 128:
  len = sprintf(buf, "4480\n");
  break;
 }
 return len;
}
