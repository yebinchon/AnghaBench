
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int lock; } ;
struct iio_dev_attr {int address; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_write_ctrl_reg (struct sca3000_state*,int ,long) ;
 int strict_strtol (char const*,int,long*) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t sca3000_write_thresh(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t len)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct sca3000_state *st = indio_dev->dev_data;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 int ret;
 long val;

 ret = strict_strtol(buf, 10, &val);
 if (ret)
  return ret;
 mutex_lock(&st->lock);
 ret = sca3000_write_ctrl_reg(st, this_attr->address, val);
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
