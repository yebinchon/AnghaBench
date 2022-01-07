
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;


 int ENODEV ;
 int __ipv6_dev_mc_dec (struct inet6_dev*,struct in6_addr const*) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;

int ipv6_dev_mc_dec(struct net_device *dev, const struct in6_addr *addr)
{
 struct inet6_dev *idev = in6_dev_get(dev);
 int err;

 if (!idev)
  return -ENODEV;

 err = __ipv6_dev_mc_dec(idev, addr);

 in6_dev_put(idev);

 return err;
}
