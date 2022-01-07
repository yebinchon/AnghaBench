
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev_attr {int address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int lis3l02dq_spi_write_reg_s16 (struct device*,int ,long) ;
 int strict_strtol (char const*,int,long*) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t lis3l02dq_write_16bit_signed(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t len)
{
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 int ret;
 long val;

 ret = strict_strtol(buf, 10, &val);
 if (ret)
  goto error_ret;
 ret = lis3l02dq_spi_write_reg_s16(dev, this_attr->address, val);

error_ret:
 return ret ? ret : len;
}
