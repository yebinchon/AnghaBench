
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int lock; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SCA3000_FREE_FALL_DETECT ;
 int SCA3000_REG_ADDR_MODE ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;
 int strict_strtol (char const*,int,long*) ;

__attribute__((used)) static ssize_t sca3000_set_free_fall_mode(struct device *dev,
       struct device_attribute *attr,
       const char *buf,
       size_t len)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct sca3000_state *st = indio_dev->dev_data;
 long val;
 int ret;
 u8 *rx;
 u8 protect_mask = SCA3000_FREE_FALL_DETECT;

 mutex_lock(&st->lock);
 ret = strict_strtol(buf, 10, &val);
 if (ret)
  goto error_ret;


 ret = sca3000_read_data(st, SCA3000_REG_ADDR_MODE, &rx, 1);
 if (ret)
  goto error_ret;


 if (val && !(rx[1] & protect_mask))
  ret = sca3000_write_reg(st, SCA3000_REG_ADDR_MODE,
     (rx[1] | SCA3000_FREE_FALL_DETECT));

 else if (!val && (rx[1]&protect_mask))
  ret = sca3000_write_reg(st, SCA3000_REG_ADDR_MODE,
     (rx[1] & ~protect_mask));

 kfree(rx);
error_ret:
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
