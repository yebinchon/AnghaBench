
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct inet6_dev {int dummy; } ;


 int ASSERT_RTNL () ;
 int IFF_UP ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 struct inet6_dev* ipv6_add_dev (struct net_device*) ;
 int ipv6_mc_up (struct inet6_dev*) ;

__attribute__((used)) static struct inet6_dev * ipv6_find_idev(struct net_device *dev)
{
 struct inet6_dev *idev;

 ASSERT_RTNL();

 if ((idev = __in6_dev_get(dev)) == ((void*)0)) {
  if ((idev = ipv6_add_dev(dev)) == ((void*)0))
   return ((void*)0);
 }

 if (dev->flags&IFF_UP)
  ipv6_mc_up(idev);
 return idev;
}
