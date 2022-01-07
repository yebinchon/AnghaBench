
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_driver {int ids; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int * match_device (int ,int ) ;
 int to_xenbus_device (struct device*) ;
 struct xenbus_driver* to_xenbus_driver (struct device_driver*) ;

int xenbus_match(struct device *_dev, struct device_driver *_drv)
{
 struct xenbus_driver *drv = to_xenbus_driver(_drv);

 if (!drv->ids)
  return 0;

 return match_device(drv->ids, to_xenbus_device(_dev)) != ((void*)0);
}
