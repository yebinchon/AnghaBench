
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_ifaddr {int prefix_len; int addr; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int lock; struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;


 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int ipv6_prefix_equal (struct in6_addr*,int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

int ipv6_chk_prefix(struct in6_addr *addr, struct net_device *dev)
{
 struct inet6_dev *idev;
 struct inet6_ifaddr *ifa;
 int onlink;

 onlink = 0;
 rcu_read_lock();
 idev = __in6_dev_get(dev);
 if (idev) {
  read_lock_bh(&idev->lock);
  for (ifa = idev->addr_list; ifa; ifa = ifa->if_next) {
   onlink = ipv6_prefix_equal(addr, &ifa->addr,
         ifa->prefix_len);
   if (onlink)
    break;
  }
  read_unlock_bh(&idev->lock);
 }
 rcu_read_unlock();
 return onlink;
}
