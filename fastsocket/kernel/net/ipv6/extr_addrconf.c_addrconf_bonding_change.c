
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;


 int ASSERT_RTNL () ;
 unsigned long NETDEV_BONDING_NEWTYPE ;
 unsigned long NETDEV_BONDING_OLDTYPE ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int ipv6_mc_remap (struct inet6_dev*) ;
 int ipv6_mc_unmap (struct inet6_dev*) ;

__attribute__((used)) static void addrconf_bonding_change(struct net_device *dev, unsigned long event)
{
 struct inet6_dev *idev;
 ASSERT_RTNL();

 idev = __in6_dev_get(dev);

 if (event == NETDEV_BONDING_NEWTYPE)
  ipv6_mc_remap(idev);
 else if (event == NETDEV_BONDING_OLDTYPE)
  ipv6_mc_unmap(idev);
}
