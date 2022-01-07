
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrmk_spdinfo {int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct TYPE_3__ {int policy_idx_hmask; int * policy_count; } ;
struct TYPE_4__ {TYPE_1__ xfrm; } ;


 size_t XFRM_POLICY_FWD ;
 size_t XFRM_POLICY_IN ;
 size_t XFRM_POLICY_MAX ;
 size_t XFRM_POLICY_OUT ;
 TYPE_2__ init_net ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int xfrm_policy_hashmax ;
 int xfrm_policy_lock ;

void xfrm_spd_getinfo(struct xfrmk_spdinfo *si)
{
 read_lock_bh(&xfrm_policy_lock);
 si->incnt = init_net.xfrm.policy_count[XFRM_POLICY_IN];
 si->outcnt = init_net.xfrm.policy_count[XFRM_POLICY_OUT];
 si->fwdcnt = init_net.xfrm.policy_count[XFRM_POLICY_FWD];
 si->inscnt = init_net.xfrm.policy_count[XFRM_POLICY_IN+XFRM_POLICY_MAX];
 si->outscnt = init_net.xfrm.policy_count[XFRM_POLICY_OUT+XFRM_POLICY_MAX];
 si->fwdscnt = init_net.xfrm.policy_count[XFRM_POLICY_FWD+XFRM_POLICY_MAX];
 si->spdhcnt = init_net.xfrm.policy_idx_hmask;
 si->spdhmcnt = xfrm_policy_hashmax;
 read_unlock_bh(&xfrm_policy_lock);
}
