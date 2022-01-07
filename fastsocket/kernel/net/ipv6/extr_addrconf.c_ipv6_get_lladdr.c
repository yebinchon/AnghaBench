
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_ifaddr {scalar_t__ scope; unsigned char flags; int addr; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int lock; struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;


 int EADDRNOTAVAIL ;
 scalar_t__ IFA_LINK ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int ipv6_addr_copy (struct in6_addr*,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

int ipv6_get_lladdr(struct net_device *dev, struct in6_addr *addr,
      unsigned char banned_flags)
{
 struct inet6_dev *idev;
 int err = -EADDRNOTAVAIL;

 rcu_read_lock();
 if ((idev = __in6_dev_get(dev)) != ((void*)0)) {
  struct inet6_ifaddr *ifp;

  read_lock_bh(&idev->lock);
  for (ifp=idev->addr_list; ifp; ifp=ifp->if_next) {
   if (ifp->scope == IFA_LINK && !(ifp->flags & banned_flags)) {
    ipv6_addr_copy(addr, &ifp->addr);
    err = 0;
    break;
   }
  }
  read_unlock_bh(&idev->lock);
 }
 rcu_read_unlock();
 return err;
}
