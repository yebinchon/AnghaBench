
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int dlm_reco_thread_wq; } ;


 int wake_up (int *) ;

void dlm_kick_recovery_thread(struct dlm_ctxt *dlm)
{






 wake_up(&dlm->dlm_reco_thread_wq);
}
