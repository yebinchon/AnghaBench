
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int mtu6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int IPV6_MIN_MTU ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;

__attribute__((used)) static int ipv6_get_mtu(struct net_device *dev)
{
 int mtu = IPV6_MIN_MTU;
 struct inet6_dev *idev;

 idev = in6_dev_get(dev);
 if (idev) {
  mtu = idev->cnf.mtu6;
  in6_dev_put(idev);
 }
 return mtu;
}
