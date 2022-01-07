
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net_device* __dev_getfirstbyhwtype (struct net*,unsigned short) ;
 int dev_hold (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

struct net_device *dev_getfirstbyhwtype(struct net *net, unsigned short type)
{
 struct net_device *dev;

 rtnl_lock();
 dev = __dev_getfirstbyhwtype(net, type);
 if (dev)
  dev_hold(dev);
 rtnl_unlock();
 return dev;
}
