
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_driver {int (* read_otherend_details ) (struct xenbus_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct xenbus_device {TYPE_1__ dev; } ;


 int free_otherend_details (struct xenbus_device*) ;
 int free_otherend_watch (struct xenbus_device*) ;
 int stub1 (struct xenbus_device*) ;
 struct xenbus_driver* to_xenbus_driver (int ) ;

__attribute__((used)) static int talk_to_otherend(struct xenbus_device *dev)
{
 struct xenbus_driver *drv = to_xenbus_driver(dev->dev.driver);

 free_otherend_watch(dev);
 free_otherend_details(dev);

 return drv->read_otherend_details(dev);
}
