
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet6_ifaddr {scalar_t__ probes; int flags; int addr; struct inet6_dev* idev; int lock; } ;
struct inet6_dev {int dev; int lock; TYPE_1__* nd_parms; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int retrans_time; } ;


 int AC_DAD ;
 int IFA_F_DADFAILED ;
 int IFA_F_OPTIMISTIC ;
 int IFA_F_TENTATIVE ;
 int addrconf_addr_solict_mult (int *,struct in6_addr*) ;
 int addrconf_dad_completed (struct inet6_ifaddr*) ;
 scalar_t__ addrconf_dad_end (struct inet6_ifaddr*) ;
 int addrconf_mod_timer (struct inet6_ifaddr*,int ,int ) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 int in6addr_any ;
 int ndisc_send_ns (int ,int *,int *,struct in6_addr*,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void addrconf_dad_timer(unsigned long data)
{
 struct inet6_ifaddr *ifp = (struct inet6_ifaddr *) data;
 struct inet6_dev *idev = ifp->idev;
 struct in6_addr mcaddr;

 if (!ifp->probes && addrconf_dad_end(ifp))
  goto out;

 read_lock_bh(&idev->lock);
 if (idev->dead) {
  read_unlock_bh(&idev->lock);
  goto out;
 }
 spin_lock_bh(&ifp->lock);
 if (ifp->probes == 0) {




  ifp->flags &= ~(IFA_F_TENTATIVE|IFA_F_OPTIMISTIC|IFA_F_DADFAILED);
  spin_unlock_bh(&ifp->lock);
  read_unlock_bh(&idev->lock);

  addrconf_dad_completed(ifp);

  goto out;
 }

 ifp->probes--;
 addrconf_mod_timer(ifp, AC_DAD, ifp->idev->nd_parms->retrans_time);
 spin_unlock_bh(&ifp->lock);
 read_unlock_bh(&idev->lock);


 addrconf_addr_solict_mult(&ifp->addr, &mcaddr);
 ndisc_send_ns(ifp->idev->dev, ((void*)0), &ifp->addr, &mcaddr, &in6addr_any);
out:
 in6_ifa_put(ifp);
}
