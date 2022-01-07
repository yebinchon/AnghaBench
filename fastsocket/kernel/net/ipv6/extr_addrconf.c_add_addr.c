
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {int lock; int flags; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;


 int IFA_F_PERMANENT ;
 int IFA_F_TENTATIVE ;
 int IS_ERR (struct inet6_ifaddr*) ;
 int RTM_NEWADDR ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* ipv6_add_addr (struct inet6_dev*,struct in6_addr const*,int,int,int ,int ,int ) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void add_addr(struct inet6_dev *idev, const struct in6_addr *addr,
       int plen, int scope)
{
 struct inet6_ifaddr *ifp;

 ifp = ipv6_add_addr(idev, addr, plen, scope, IFA_F_PERMANENT, 0, 0);
 if (!IS_ERR(ifp)) {
  spin_lock_bh(&ifp->lock);
  ifp->flags &= ~IFA_F_TENTATIVE;
  spin_unlock_bh(&ifp->lock);
  ipv6_ifa_notify(RTM_NEWADDR, ifp);
  in6_ifa_put(ifp);
 }
}
