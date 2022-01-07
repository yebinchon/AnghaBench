
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sca3000_state {int bpse; int lock; } ;
struct iio_ring_buffer {TYPE_1__* indio_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct sca3000_state* dev_data; } ;


 int EINVAL ;
 int SCA3000_REG_ADDR_MODE ;
 int SCA3000_RING_BUF_8BIT ;
 struct iio_ring_buffer* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;
 int strict_strtol (char const*,int,long*) ;

__attribute__((used)) static ssize_t sca3000_store_ring_bpse(struct device *dev,
          struct device_attribute *attr,
          const char *buf,
          size_t len)
{
 struct iio_ring_buffer *r = dev_get_drvdata(dev);
 struct sca3000_state *st = r->indio_dev->dev_data;
 int ret;
 u8 *rx;
 long val;
 ret = strict_strtol(buf, 10, &val);
 if (ret)
  return ret;

 mutex_lock(&st->lock);

 ret = sca3000_read_data(st, SCA3000_REG_ADDR_MODE, &rx, 1);
 if (!ret)
  switch (val) {
  case 8:
   ret = sca3000_write_reg(st, SCA3000_REG_ADDR_MODE,
      rx[1] | SCA3000_RING_BUF_8BIT);
   st->bpse = 8;
   break;
  case 11:
   ret = sca3000_write_reg(st, SCA3000_REG_ADDR_MODE,
      rx[1] & ~SCA3000_RING_BUF_8BIT);
   st->bpse = 11;
   break;
  default:
   ret = -EINVAL;
   break;
  }
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
