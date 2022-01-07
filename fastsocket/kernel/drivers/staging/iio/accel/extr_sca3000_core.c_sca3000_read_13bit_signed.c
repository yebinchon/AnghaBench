
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int lock; } ;
struct iio_dev_attr {int address; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_13bit_convert (int ,int ) ;
 int sca3000_read_data (struct sca3000_state*,int ,int **,int) ;
 scalar_t__ sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t sca3000_read_13bit_signed(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int len = 0, ret;
 int val;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 u8 *rx;
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct sca3000_state *st = indio_dev->dev_data;

 mutex_lock(&st->lock);
 ret = sca3000_read_data(st, this_attr->address, &rx, 2);
 if (ret < 0)
  goto error_ret;
 val = sca3000_13bit_convert(rx[1], rx[2]);
 len += sprintf(buf + len, "%d\n", val);
 kfree(rx);
error_ret:
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
