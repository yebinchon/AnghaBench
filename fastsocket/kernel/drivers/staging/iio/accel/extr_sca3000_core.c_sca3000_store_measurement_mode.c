
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int lock; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SCA3000_REG_ADDR_MODE ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;
 int strict_strtol (char const*,int,long*) ;

__attribute__((used)) static ssize_t
sca3000_store_measurement_mode(struct device *dev,
          struct device_attribute *attr,
          const char *buf,
          size_t len)
{
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 struct sca3000_state *st = dev_info->dev_data;
 int ret;
 u8 *rx;
 int mask = 0x03;
 long val;

 mutex_lock(&st->lock);
 ret = strict_strtol(buf, 10, &val);
 if (ret)
  goto error_ret;
 ret = sca3000_read_data(st, SCA3000_REG_ADDR_MODE, &rx, 1);
 if (ret)
  goto error_ret;
 rx[1] &= ~mask;
 rx[1] |= (val & mask);
 ret = sca3000_write_reg(st, SCA3000_REG_ADDR_MODE, rx[1]);
 if (ret)
  goto error_free_rx;
 mutex_unlock(&st->lock);

 return len;

error_free_rx:
 kfree(rx);
error_ret:
 mutex_unlock(&st->lock);

 return ret;
}
