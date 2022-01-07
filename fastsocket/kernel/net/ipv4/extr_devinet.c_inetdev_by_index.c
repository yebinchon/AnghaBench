
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in_device {int dummy; } ;


 struct net_device* __dev_get_by_index (struct net*,int) ;
 int dev_base_lock ;
 struct in_device* in_dev_get (struct net_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct in_device *inetdev_by_index(struct net *net, int ifindex)
{
 struct net_device *dev;
 struct in_device *in_dev = ((void*)0);
 read_lock(&dev_base_lock);
 dev = __dev_get_by_index(net, ifindex);
 if (dev)
  in_dev = in_dev_get(dev);
 read_unlock(&dev_base_lock);
 return in_dev;
}
