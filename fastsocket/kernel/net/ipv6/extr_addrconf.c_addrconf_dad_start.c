
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int flags; } ;
struct TYPE_4__ {int * s6_addr32; } ;
struct inet6_ifaddr {scalar_t__ dead; int flags; int lock; int rt; TYPE_2__ addr; struct inet6_dev* idev; } ;
struct TYPE_3__ {int accept_dad; } ;
struct inet6_dev {int if_flags; int lock; TYPE_1__ cnf; struct net_device* dev; } ;


 int IFA_F_DADFAILED ;
 int IFA_F_NODAD ;
 int IFA_F_OPTIMISTIC ;
 int IFA_F_TENTATIVE ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int IF_READY ;
 scalar_t__ INET6_IFADDR_STATE_DEAD ;
 int addrconf_dad_completed (struct inet6_ifaddr*) ;
 int addrconf_dad_kick (struct inet6_ifaddr*) ;
 int addrconf_dad_stop (struct inet6_ifaddr*,int ) ;
 int addrconf_join_solict (struct net_device*,TYPE_2__*) ;
 int in6_ifa_hold (struct inet6_ifaddr*) ;
 int ip6_ins_rt (int ) ;
 int net_srandom (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void addrconf_dad_start(struct inet6_ifaddr *ifp, u32 flags)
{
 struct inet6_dev *idev = ifp->idev;
 struct net_device *dev = idev->dev;

 addrconf_join_solict(dev, &ifp->addr);

 net_srandom(ifp->addr.s6_addr32[3]);

 read_lock_bh(&idev->lock);
 spin_lock_bh(&ifp->lock);
 if (ifp->dead == INET6_IFADDR_STATE_DEAD)
  goto out;

 if (dev->flags&(IFF_NOARP|IFF_LOOPBACK) ||
     idev->cnf.accept_dad < 1 ||
     !(ifp->flags&IFA_F_TENTATIVE) ||
     ifp->flags & IFA_F_NODAD) {
  ifp->flags &= ~(IFA_F_TENTATIVE|IFA_F_OPTIMISTIC|IFA_F_DADFAILED);
  spin_unlock_bh(&ifp->lock);
  read_unlock_bh(&idev->lock);

  addrconf_dad_completed(ifp);
  return;
 }

 if (!(idev->if_flags & IF_READY)) {
  spin_unlock_bh(&ifp->lock);
  read_unlock_bh(&idev->lock);





  in6_ifa_hold(ifp);
  addrconf_dad_stop(ifp, 0);
  return;
 }





 if(ifp->flags & IFA_F_OPTIMISTIC)
  ip6_ins_rt(ifp->rt);

 addrconf_dad_kick(ifp);
out:
 spin_unlock_bh(&ifp->lock);
 read_unlock_bh(&idev->lock);
}
