
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_driver {int (* probe ) (struct device*,int ,int ) ;} ;
struct vme_bridge {int num; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct vme_bridge* dev_to_bridge (struct device*) ;
 struct vme_driver* dev_to_vme_driver (struct device*) ;
 int stub1 (struct device*,int ,int ) ;
 int vme_calc_slot (struct device*) ;

__attribute__((used)) static int vme_bus_probe(struct device *dev)
{
 struct vme_bridge *bridge;
 struct vme_driver *driver;
 int retval = -ENODEV;

 driver = dev_to_vme_driver(dev);
 bridge = dev_to_bridge(dev);

 if(driver->probe != ((void*)0)) {
  retval = driver->probe(dev, bridge->num, vme_calc_slot(dev));
 }

 return retval;
}
