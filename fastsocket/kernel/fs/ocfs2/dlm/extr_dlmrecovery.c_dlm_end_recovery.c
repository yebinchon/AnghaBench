
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int event; } ;
struct dlm_ctxt {TYPE_1__ reco; int spinlock; } ;


 int BUG_ON (int) ;
 int DLM_RECO_STATE_ACTIVE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void dlm_end_recovery(struct dlm_ctxt *dlm)
{
 spin_lock(&dlm->spinlock);
 BUG_ON(!(dlm->reco.state & DLM_RECO_STATE_ACTIVE));
 dlm->reco.state &= ~DLM_RECO_STATE_ACTIVE;
 spin_unlock(&dlm->spinlock);
 wake_up(&dlm->reco.event);
}
