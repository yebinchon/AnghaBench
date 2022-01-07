
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {int flags; scalar_t__ dead; int lock; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int lock; struct inet6_ifaddr* addr_list; } ;


 int IFA_F_TENTATIVE ;
 scalar_t__ INET6_IFADDR_STATE_DAD ;
 int addrconf_dad_kick (struct inet6_ifaddr*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void addrconf_dad_run(struct inet6_dev *idev) {
 struct inet6_ifaddr *ifp;

 read_lock_bh(&idev->lock);
 for (ifp = idev->addr_list; ifp; ifp = ifp->if_next) {
  spin_lock_bh(&ifp->lock);
  if (ifp->flags & IFA_F_TENTATIVE &&
      ifp->dead == INET6_IFADDR_STATE_DAD)
   addrconf_dad_kick(ifp);
  spin_unlock_bh(&ifp->lock);
 }
 read_unlock_bh(&idev->lock);
}
