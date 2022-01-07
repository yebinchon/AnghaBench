
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {int num; struct device* dev; int parent; } ;
struct device {struct vme_bridge* platform_data; int * bus; int parent; } ;


 int VME_SLOTS_MAX ;
 int dev_set_name (struct device*,char*,int ,int) ;
 int device_register (struct device*) ;
 int device_unregister (struct device*) ;
 int memset (struct device*,int ,int) ;
 int vme_alloc_bus_num () ;
 int vme_bus_type ;
 int vme_free_bus_num (int ) ;

int vme_register_bridge (struct vme_bridge *bridge)
{
 struct device *dev;
 int retval;
 int i;

 bridge->num = vme_alloc_bus_num();





 for (i = 0; i < VME_SLOTS_MAX; i++) {
  dev = &(bridge->dev[i]);
  memset(dev, 0, sizeof(struct device));

  dev->parent = bridge->parent;
  dev->bus = &(vme_bus_type);





  dev->platform_data = bridge;
  dev_set_name(dev, "vme-%x.%x", bridge->num, i + 1);

  retval = device_register(dev);
  if(retval)
   goto err_reg;
 }

 return retval;

 i = VME_SLOTS_MAX;
err_reg:
 while (i > -1) {
  dev = &(bridge->dev[i]);
  device_unregister(dev);
 }
 vme_free_bus_num(bridge->num);
 return retval;
}
