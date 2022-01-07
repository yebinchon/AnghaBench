
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_larval_drop; int sysctl_acq_expires; int sysctl_aevent_rseqth; int sysctl_aevent_etime; } ;
struct net {TYPE_1__ xfrm; } ;


 int XFRM_AE_ETIME ;
 int XFRM_AE_SEQT_SIZE ;

__attribute__((used)) static void __xfrm_sysctl_init(struct net *net)
{
 net->xfrm.sysctl_aevent_etime = XFRM_AE_ETIME;
 net->xfrm.sysctl_aevent_rseqth = XFRM_AE_SEQT_SIZE;
 net->xfrm.sysctl_larval_drop = 1;
 net->xfrm.sysctl_acq_expires = 30;
}
