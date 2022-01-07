
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct net_device {struct device dev; } ;


 int * dev_net (struct net_device*) ;
 int device_del (struct device*) ;
 int init_net ;
 int kobject_get (int *) ;
 int remove_queue_kobjects (struct net_device*) ;

void netdev_unregister_kobject(struct net_device * net)
{
 struct device *dev = &(net->dev);

 kobject_get(&dev->kobj);

 if (dev_net(net) != &init_net)
  return;

 remove_queue_kobjects(net);

 device_del(dev);
}
