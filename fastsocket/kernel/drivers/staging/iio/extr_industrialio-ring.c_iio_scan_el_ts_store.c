
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {scalar_t__ currentmode; int scan_timestamp; int mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 scalar_t__ INDIO_RING_TRIGGERED ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

ssize_t iio_scan_el_ts_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t len)
{
 int ret = 0;
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 bool state;
 state = !(buf[0] == '0');
 mutex_lock(&indio_dev->mlock);
 if (indio_dev->currentmode == INDIO_RING_TRIGGERED) {
  ret = -EBUSY;
  goto error_ret;
 }
 indio_dev->scan_timestamp = state;
error_ret:
 mutex_unlock(&indio_dev->mlock);

 return ret ? ret : len;
}
