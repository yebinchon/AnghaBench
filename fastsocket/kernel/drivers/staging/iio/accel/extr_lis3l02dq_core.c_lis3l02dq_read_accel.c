
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
 int lis3l02dq_read_16bit_signed (struct device*,struct device_attribute*,char*) ;
 int lis3l02dq_read_accel_from_ring (struct device*,struct device_attribute*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t lis3l02dq_read_accel(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 ssize_t ret;


 mutex_lock(&indio_dev->mlock);
 if (indio_dev->currentmode == INDIO_RING_TRIGGERED)
  ret = lis3l02dq_read_accel_from_ring(dev, attr, buf);
 else
  ret = lis3l02dq_read_16bit_signed(dev, attr, buf);
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
