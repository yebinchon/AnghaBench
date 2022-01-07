
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev_attr {int address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s8 ;


 int lis3l02dq_spi_read_reg_8 (struct device*,int ,int *) ;
 int sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t lis3l02dq_read_signed(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 int ret;
 s8 val;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);

 ret = lis3l02dq_spi_read_reg_8(dev, this_attr->address, (u8 *)&val);

 return ret ? ret : sprintf(buf, "%d\n", val);
}
