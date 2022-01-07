
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct attribute_group const** groups; struct net_device* platform_data; int * class; } ;
struct net_device {scalar_t__ ieee80211_ptr; scalar_t__ wireless_handlers; int name; struct attribute_group** sysfs_groups; struct device dev; } ;
struct attribute_group {int dummy; } ;


 int * dev_net (struct net_device*) ;
 int dev_set_name (struct device*,char*,int ) ;
 int device_add (struct device*) ;
 int device_del (struct device*) ;
 int init_net ;
 int net_class ;
 int netstat_group ;
 int register_queue_kobjects (struct net_device*) ;
 int wireless_group ;

int netdev_register_kobject(struct net_device *net)
{
 struct device *dev = &(net->dev);
 const struct attribute_group **groups = net->sysfs_groups;
 int error = 0;

 dev->class = &net_class;
 dev->platform_data = net;
 dev->groups = groups;

 dev_set_name(dev, "%s", net->name);
 if (dev_net(net) != &init_net)
  return 0;

 error = device_add(dev);
 if (error)
  return error;

 error = register_queue_kobjects(net);
 if (error) {
  device_del(dev);
  return error;
 }

 return error;
}
