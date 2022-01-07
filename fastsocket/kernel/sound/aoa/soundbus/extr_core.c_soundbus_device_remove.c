
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundbus_driver {int (* remove ) (struct soundbus_dev*) ;} ;
struct soundbus_dev {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int soundbus_dev_put (struct soundbus_dev*) ;
 int stub1 (struct soundbus_dev*) ;
 struct soundbus_dev* to_soundbus_device (struct device*) ;
 struct soundbus_driver* to_soundbus_driver (scalar_t__) ;

__attribute__((used)) static int soundbus_device_remove(struct device *dev)
{
 struct soundbus_dev * soundbus_dev = to_soundbus_device(dev);
 struct soundbus_driver * drv = to_soundbus_driver(dev->driver);

 if (dev->driver && drv->remove)
  drv->remove(soundbus_dev);
 soundbus_dev_put(soundbus_dev);

 return 0;
}
