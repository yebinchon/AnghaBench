
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {unsigned int prefix_len; int addr; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int lock; int dev; struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int addrconf_ifdown (int ,int) ;
 int in6_ifa_hold (struct inet6_ifaddr*) ;
 scalar_t__ ipv6_addr_equal (struct in6_addr*,int *) ;
 int ipv6_del_addr (struct inet6_ifaddr*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int inet6_addr_del(struct net *net, int ifindex, struct in6_addr *pfx,
     unsigned int plen)
{
 struct inet6_ifaddr *ifp;
 struct inet6_dev *idev;
 struct net_device *dev;

 if (plen > 128)
  return -EINVAL;

 dev = __dev_get_by_index(net, ifindex);
 if (!dev)
  return -ENODEV;

 if ((idev = __in6_dev_get(dev)) == ((void*)0))
  return -ENXIO;

 read_lock_bh(&idev->lock);
 for (ifp = idev->addr_list; ifp; ifp=ifp->if_next) {
  if (ifp->prefix_len == plen &&
      ipv6_addr_equal(pfx, &ifp->addr)) {
   in6_ifa_hold(ifp);
   read_unlock_bh(&idev->lock);

   ipv6_del_addr(ifp);




   if (idev->addr_list == ((void*)0))
    addrconf_ifdown(idev->dev, 1);
   return 0;
  }
 }
 read_unlock_bh(&idev->lock);
 return -EADDRNOTAVAIL;
}
