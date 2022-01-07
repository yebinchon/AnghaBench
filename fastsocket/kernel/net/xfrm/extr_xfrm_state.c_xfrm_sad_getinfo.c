
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrmk_sadinfo {int sadhmcnt; int sadhcnt; int sadcnt; } ;
struct TYPE_3__ {int state_hmask; int state_num; } ;
struct TYPE_4__ {TYPE_1__ xfrm; } ;


 TYPE_2__ init_net ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_hashmax ;
 int xfrm_state_lock ;

void xfrm_sad_getinfo(struct xfrmk_sadinfo *si)
{
 spin_lock_bh(&xfrm_state_lock);
 si->sadcnt = init_net.xfrm.state_num;
 si->sadhcnt = init_net.xfrm.state_hmask;
 si->sadhmcnt = xfrm_state_hashmax;
 spin_unlock_bh(&xfrm_state_lock);
}
