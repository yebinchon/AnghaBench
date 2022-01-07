
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int down; } ;


 int XenbusStateClosed ;
 int complete (int *) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;

int xenbus_frontend_closed(struct xenbus_device *dev)
{
 xenbus_switch_state(dev, XenbusStateClosed);
 complete(&dev->down);
 return 0;
}
