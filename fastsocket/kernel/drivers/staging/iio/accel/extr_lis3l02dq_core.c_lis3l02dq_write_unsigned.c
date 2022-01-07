
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u8 ;
struct iio_dev_attr {int address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int lis3l02dq_spi_write_reg_8 (struct device*,int ,int *) ;
 int strict_strtoul (char const*,int,int *) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t lis3l02dq_write_unsigned(struct device *dev,
     struct device_attribute *attr,
     const char *buf,
     size_t len)
{
 int ret;
 ulong valin;
 u8 val;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);

 ret = strict_strtoul(buf, 10, &valin);
 if (ret)
  goto err_ret;
 val = valin;
 ret = lis3l02dq_spi_write_reg_8(dev, this_attr->address, &val);

err_ret:
 return ret ? ret : len;
}
