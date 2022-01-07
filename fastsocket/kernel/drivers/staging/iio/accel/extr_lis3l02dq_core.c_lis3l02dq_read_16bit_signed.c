
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev_attr {int address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s16 ;


 int lis3l02dq_spi_read_reg_s16 (struct device*,int ,int*) ;
 int sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t lis3l02dq_read_16bit_signed(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 int ret;
 s16 val = 0;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);

 ret = lis3l02dq_spi_read_reg_s16(dev, this_attr->address, &val);

 if (ret)
  return ret;

 return sprintf(buf, "%d\n", val);
}
