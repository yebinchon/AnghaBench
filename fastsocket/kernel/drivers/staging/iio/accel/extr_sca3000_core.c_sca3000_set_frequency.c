
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


 int EINVAL ;
 int SCA3000_OUT_CTRL_BUF_DIV_2 ;
 int SCA3000_OUT_CTRL_BUF_DIV_4 ;
 int SCA3000_REG_CTRL_SEL_OUT_CTRL ;
 int __sca3000_get_base_freq (struct sca3000_state*,int ,int*) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_ctrl_reg (struct sca3000_state*,int ,int**) ;
 int sca3000_write_ctrl_reg (struct sca3000_state*,int ,int) ;
 int strict_strtol (char const*,int,long*) ;

__attribute__((used)) static ssize_t sca3000_set_frequency(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t len)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct sca3000_state *st = indio_dev->dev_data;
 int ret, base_freq = 0;
 u8 *rx;
 long val;

 ret = strict_strtol(buf, 10, &val);
 if (ret)
  return ret;

 mutex_lock(&st->lock);

 ret = __sca3000_get_base_freq(st, st->info, &base_freq);
 if (ret)
  goto error_free_lock;

 ret = sca3000_read_ctrl_reg(st, SCA3000_REG_CTRL_SEL_OUT_CTRL, &rx);
 if (ret)
  goto error_free_lock;

 rx[1] &= ~0x03;

 if (val == base_freq/2) {
  rx[1] |= SCA3000_OUT_CTRL_BUF_DIV_2;
 } else if (val == base_freq/4) {
  rx[1] |= SCA3000_OUT_CTRL_BUF_DIV_4;
 } else if (val != base_freq) {
  ret = -EINVAL;
  goto error_free_lock;
 }
 ret = sca3000_write_ctrl_reg(st, SCA3000_REG_CTRL_SEL_OUT_CTRL, rx[1]);
error_free_lock:
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
