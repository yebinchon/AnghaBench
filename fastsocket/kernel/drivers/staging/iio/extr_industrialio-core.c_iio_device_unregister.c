
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int modes; int dev; } ;


 int INDIO_RING_TRIGGERED ;
 int device_unregister (int *) ;
 int iio_device_unregister_eventset (struct iio_dev*) ;
 int iio_device_unregister_id (struct iio_dev*) ;
 int iio_device_unregister_sysfs (struct iio_dev*) ;
 int iio_device_unregister_trigger_consumer (struct iio_dev*) ;

void iio_device_unregister(struct iio_dev *dev_info)
{
 if (dev_info->modes & INDIO_RING_TRIGGERED)
  iio_device_unregister_trigger_consumer(dev_info);
 iio_device_unregister_eventset(dev_info);
 iio_device_unregister_sysfs(dev_info);
 iio_device_unregister_id(dev_info);
 device_unregister(&dev_info->dev);
}
