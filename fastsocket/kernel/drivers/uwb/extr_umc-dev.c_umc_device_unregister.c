
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_dev {int resource; int dev; } ;
struct device {int dummy; } ;


 int device_unregister (int *) ;
 struct device* get_device (int *) ;
 int put_device (struct device*) ;
 int release_resource (int *) ;

void umc_device_unregister(struct umc_dev *umc)
{
 struct device *dev;
 if (!umc)
  return;
 dev = get_device(&umc->dev);
 device_unregister(&umc->dev);
 release_resource(&umc->resource);
 put_device(dev);
}
