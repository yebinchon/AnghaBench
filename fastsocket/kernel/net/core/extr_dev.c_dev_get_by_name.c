
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net_device* __dev_get_by_name (struct net*,char const*) ;
 int dev_base_lock ;
 int dev_hold (struct net_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct net_device *dev_get_by_name(struct net *net, const char *name)
{
 struct net_device *dev;

 read_lock(&dev_base_lock);
 dev = __dev_get_by_name(net, name);
 if (dev)
  dev_hold(dev);
 read_unlock(&dev_base_lock);
 return dev;
}
