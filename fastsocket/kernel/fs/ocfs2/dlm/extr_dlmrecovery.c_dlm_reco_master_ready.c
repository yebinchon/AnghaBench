
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ new_master; } ;
struct dlm_ctxt {int spinlock; TYPE_1__ reco; } ;


 scalar_t__ O2NM_INVALID_NODE_NUM ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_reco_master_ready(struct dlm_ctxt *dlm)
{
 int ready;
 spin_lock(&dlm->spinlock);
 ready = (dlm->reco.new_master != O2NM_INVALID_NODE_NUM);
 spin_unlock(&dlm->spinlock);
 return ready;
}
