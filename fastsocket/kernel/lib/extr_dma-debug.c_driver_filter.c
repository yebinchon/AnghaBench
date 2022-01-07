
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {scalar_t__ name; } ;
struct device {struct device_driver* driver; } ;


 scalar_t__ NAME_MAX_LEN ;
 struct device_driver* current_driver ;
 int * current_driver_name ;
 int driver_name_lock ;
 struct device_driver* get_driver (struct device_driver*) ;
 scalar_t__ likely (int) ;
 int put_driver (struct device_driver*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ strncmp (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool driver_filter(struct device *dev)
{
 struct device_driver *drv;
 unsigned long flags;
 bool ret;


 if (likely(!current_driver_name[0]))
  return 1;


 if (current_driver && dev && dev->driver == current_driver)
  return 1;


 if (!dev)
  return 0;

 if (current_driver || !current_driver_name[0])
  return 0;


 drv = get_driver(dev->driver);
 if (!drv)
  return 0;


 read_lock_irqsave(&driver_name_lock, flags);

 ret = 0;
 if (drv->name &&
     strncmp(current_driver_name, drv->name, NAME_MAX_LEN - 1) == 0) {
  current_driver = drv;
  ret = 1;
 }

 read_unlock_irqrestore(&driver_name_lock, flags);
 put_driver(drv);

 return ret;
}
