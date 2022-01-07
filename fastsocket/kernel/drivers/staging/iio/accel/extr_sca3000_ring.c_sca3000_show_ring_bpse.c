
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sca3000_state {int lock; } ;
struct iio_ring_buffer {TYPE_1__* indio_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct sca3000_state* dev_data; } ;


 int SCA3000_REG_ADDR_MODE ;
 int SCA3000_RING_BUF_8BIT ;
 struct iio_ring_buffer* dev_get_drvdata (struct device*) ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t sca3000_show_ring_bpse(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 int len = 0, ret;
 u8 *rx;
 struct iio_ring_buffer *r = dev_get_drvdata(dev);
 struct sca3000_state *st = r->indio_dev->dev_data;

 mutex_lock(&st->lock);
 ret = sca3000_read_data(st, SCA3000_REG_ADDR_MODE, &rx, 1);
 if (ret)
  goto error_ret;
 len = sprintf(buf, "%d\n", (rx[1] & SCA3000_RING_BUF_8BIT) ? 8 : 11);
 kfree(rx);
error_ret:
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
