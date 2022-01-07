
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {int num; struct device* dev; } ;
struct device {int dummy; } ;


 int VME_SLOTS_MAX ;
 int device_unregister (struct device*) ;
 int vme_free_bus_num (int ) ;

void vme_unregister_bridge (struct vme_bridge *bridge)
{
 int i;
 struct device *dev;


 for (i = 0; i < VME_SLOTS_MAX; i++) {
  dev = &(bridge->dev[i]);
  device_unregister(dev);
 }
 vme_free_bus_num(bridge->num);
}
