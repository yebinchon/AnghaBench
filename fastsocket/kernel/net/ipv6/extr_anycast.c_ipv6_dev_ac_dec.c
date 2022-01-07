
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;


 int ENODEV ;
 int __ipv6_dev_ac_dec (struct inet6_dev*,struct in6_addr*) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;

__attribute__((used)) static int ipv6_dev_ac_dec(struct net_device *dev, struct in6_addr *addr)
{
 int ret;
 struct inet6_dev *idev = in6_dev_get(dev);
 if (idev == ((void*)0))
  return -ENODEV;
 ret = __ipv6_dev_ac_dec(idev, addr);
 in6_dev_put(idev);
 return ret;
}
