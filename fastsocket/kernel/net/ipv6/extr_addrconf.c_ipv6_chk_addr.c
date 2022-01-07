
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int flags; int scope; TYPE_1__* idev; int addr; struct inet6_ifaddr* lst_next; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int IFA_F_TENTATIVE ;
 int IFA_HOST ;
 int IFA_LINK ;
 int addrconf_hash_lock ;
 int dev_net (struct net_device*) ;
 struct inet6_ifaddr** inet6_addr_lst ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr*) ;
 size_t ipv6_addr_hash (struct in6_addr*) ;
 int net_eq (int ,struct net*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

int ipv6_chk_addr(struct net *net, struct in6_addr *addr,
    struct net_device *dev, int strict)
{
 struct inet6_ifaddr * ifp;
 u8 hash = ipv6_addr_hash(addr);

 read_lock_bh(&addrconf_hash_lock);
 for(ifp = inet6_addr_lst[hash]; ifp; ifp=ifp->lst_next) {
  if (!net_eq(dev_net(ifp->idev->dev), net))
   continue;
  if (ipv6_addr_equal(&ifp->addr, addr) &&
      !(ifp->flags&IFA_F_TENTATIVE)) {
   if (dev == ((void*)0) || ifp->idev->dev == dev ||
       !(ifp->scope&(IFA_LINK|IFA_HOST) || strict))
    break;
  }
 }
 read_unlock_bh(&addrconf_hash_lock);
 return ifp != ((void*)0);
}
