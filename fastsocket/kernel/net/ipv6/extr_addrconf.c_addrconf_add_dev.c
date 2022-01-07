
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;


 int ASSERT_RTNL () ;
 int addrconf_add_lroute (struct net_device*) ;
 int addrconf_add_mroute (struct net_device*) ;
 struct inet6_dev* ipv6_find_idev (struct net_device*) ;

__attribute__((used)) static struct inet6_dev *addrconf_add_dev(struct net_device *dev)
{
 struct inet6_dev *idev;

 ASSERT_RTNL();

 if ((idev = ipv6_find_idev(dev)) == ((void*)0))
  return ((void*)0);


 addrconf_add_mroute(dev);


 addrconf_add_lroute(dev);
 return idev;
}
