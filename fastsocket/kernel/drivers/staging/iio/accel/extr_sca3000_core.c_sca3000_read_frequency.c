
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int lock; int info; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SCA3000_REG_CTRL_SEL_OUT_CTRL ;
 int __sca3000_get_base_freq (struct sca3000_state*,int ,int*) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_ctrl_reg (struct sca3000_state*,int ,int**) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t sca3000_read_frequency(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct sca3000_state *st = indio_dev->dev_data;
 int ret, len = 0, base_freq = 0;
 u8 *rx;
 mutex_lock(&st->lock);
 ret = __sca3000_get_base_freq(st, st->info, &base_freq);
 if (ret)
  goto error_ret_mut;
 ret = sca3000_read_ctrl_reg(st, SCA3000_REG_CTRL_SEL_OUT_CTRL, &rx);
 mutex_unlock(&st->lock);
 if (ret)
  goto error_ret;
 if (base_freq > 0)
  switch (rx[1]&0x03) {
  case 0x00:
  case 0x03:
   len = sprintf(buf, "%d\n", base_freq);
   break;
  case 0x01:
   len = sprintf(buf, "%d\n", base_freq/2);
   break;
  case 0x02:
   len = sprintf(buf, "%d\n", base_freq/4);
   break;
 };
   kfree(rx);
 return len;
error_ret_mut:
 mutex_unlock(&st->lock);
error_ret:
 return ret;
}
