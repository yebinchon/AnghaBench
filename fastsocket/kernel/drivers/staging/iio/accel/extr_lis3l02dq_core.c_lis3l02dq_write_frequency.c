
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int LIS3L02DQ_DEC_MASK ;
 int LIS3L02DQ_REG_CTRL_1_ADDR ;
 int LIS3L02DQ_REG_CTRL_1_DF_128 ;
 int LIS3L02DQ_REG_CTRL_1_DF_32 ;
 int LIS3L02DQ_REG_CTRL_1_DF_64 ;
 int LIS3L02DQ_REG_CTRL_1_DF_8 ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int lis3l02dq_spi_read_reg_8 (struct device*,int ,int *) ;
 int lis3l02dq_spi_write_reg_8 (struct device*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strict_strtol (char const*,int,long*) ;

__attribute__((used)) static ssize_t lis3l02dq_write_frequency(struct device *dev,
      struct device_attribute *attr,
      const char *buf,
      size_t len)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 long val;
 int ret;
 u8 t;

 ret = strict_strtol(buf, 10, &val);
 if (ret)
  return ret;

 mutex_lock(&indio_dev->mlock);
 ret = lis3l02dq_spi_read_reg_8(dev,
           LIS3L02DQ_REG_CTRL_1_ADDR,
           &t);
 if (ret)
  goto error_ret_mutex;

 t &= ~LIS3L02DQ_DEC_MASK;
 switch (val) {
 case 280:
  t |= LIS3L02DQ_REG_CTRL_1_DF_128;
  break;
 case 560:
  t |= LIS3L02DQ_REG_CTRL_1_DF_64;
  break;
 case 1120:
  t |= LIS3L02DQ_REG_CTRL_1_DF_32;
  break;
 case 4480:
  t |= LIS3L02DQ_REG_CTRL_1_DF_8;
  break;
 default:
  ret = -EINVAL;
  goto error_ret_mutex;
 };

 ret = lis3l02dq_spi_write_reg_8(dev,
     LIS3L02DQ_REG_CTRL_1_ADDR,
     &t);

error_ret_mutex:
 mutex_unlock(&indio_dev->mlock);

 return ret ? ret : len;
}
