
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ s6_addr; } ;
struct inet6_ifaddr {scalar_t__ scope; int flags; TYPE_1__ addr; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int lock; struct inet6_ifaddr* addr_list; } ;


 int IFA_F_TENTATIVE ;
 scalar_t__ IFA_LINK ;
 int memcpy (int *,scalar_t__,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int ipv6_inherit_eui64(u8 *eui, struct inet6_dev *idev)
{
 int err = -1;
 struct inet6_ifaddr *ifp;

 read_lock_bh(&idev->lock);
 for (ifp=idev->addr_list; ifp; ifp=ifp->if_next) {
  if (ifp->scope == IFA_LINK && !(ifp->flags&IFA_F_TENTATIVE)) {
   memcpy(eui, ifp->addr.s6_addr+8, 8);
   err = 0;
   break;
  }
 }
 read_unlock_bh(&idev->lock);
 return err;
}
