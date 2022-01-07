
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {struct device* dev; } ;
struct device {int dummy; } ;


 int VME_SLOTS_MAX ;
 int dev_err (struct device*,char*) ;
 struct vme_bridge* dev_to_bridge (struct device*) ;

int vme_calc_slot(struct device *dev)
{
 struct vme_bridge *bridge;
 int num;

 bridge = dev_to_bridge(dev);


 num = 0;
 while(num < VME_SLOTS_MAX) {
  if(&(bridge->dev[num]) == dev) {
   break;
  }
  num++;
 }
 if (num == VME_SLOTS_MAX) {
  dev_err(dev, "Failed to identify slot\n");
  num = 0;
  goto err_dev;
 }
 num++;

err_dev:
 return num;
}
