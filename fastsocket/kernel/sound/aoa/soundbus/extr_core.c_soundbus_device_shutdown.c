
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundbus_driver {int (* shutdown ) (struct soundbus_dev*) ;} ;
struct soundbus_dev {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int stub1 (struct soundbus_dev*) ;
 struct soundbus_dev* to_soundbus_device (struct device*) ;
 struct soundbus_driver* to_soundbus_driver (scalar_t__) ;

__attribute__((used)) static void soundbus_device_shutdown(struct device *dev)
{
 struct soundbus_dev * soundbus_dev = to_soundbus_device(dev);
 struct soundbus_driver * drv = to_soundbus_driver(dev->driver);

 if (dev->driver && drv->shutdown)
  drv->shutdown(soundbus_dev);
}
