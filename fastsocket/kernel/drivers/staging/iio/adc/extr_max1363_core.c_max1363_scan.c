
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {scalar_t__ currentmode; int mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ INDIO_RING_TRIGGERED ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int max1363_scan_direct (struct device*,struct device_attribute*,char*) ;
 int max1363_scan_from_ring (struct device*,struct device_attribute*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t max1363_scan(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 int ret;

 mutex_lock(&dev_info->mlock);
 if (dev_info->currentmode == INDIO_RING_TRIGGERED)
  ret = max1363_scan_from_ring(dev, attr, buf);
 else
  ret = max1363_scan_direct(dev, attr, buf);
 mutex_unlock(&dev_info->mlock);

 return ret;
}
