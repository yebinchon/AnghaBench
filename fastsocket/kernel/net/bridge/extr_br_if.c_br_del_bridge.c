
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int flags; } ;
struct net {int dummy; } ;


 int EBUSY ;
 int ENXIO ;
 int EPERM ;
 int IFF_EBRIDGE ;
 int IFF_UP ;
 struct net_device* __dev_get_by_name (struct net*,char const*) ;
 int del_br (int ) ;
 int netdev_priv (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int br_del_bridge(struct net *net, const char *name)
{
 struct net_device *dev;
 int ret = 0;

 rtnl_lock();
 dev = __dev_get_by_name(net, name);
 if (dev == ((void*)0))
  ret = -ENXIO;

 else if (!(dev->priv_flags & IFF_EBRIDGE)) {

  ret = -EPERM;
 }

 else if (dev->flags & IFF_UP) {

  ret = -EBUSY;
 }

 else
  del_br(netdev_priv(dev));

 rtnl_unlock();
 return ret;
}
