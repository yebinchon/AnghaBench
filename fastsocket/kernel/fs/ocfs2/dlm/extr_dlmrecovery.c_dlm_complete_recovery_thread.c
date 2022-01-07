
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int * dlm_reco_thread_task; } ;


 int kthread_stop (int *) ;
 int mlog (int ,char*) ;

void dlm_complete_recovery_thread(struct dlm_ctxt *dlm)
{
 if (dlm->dlm_reco_thread_task) {
  mlog(0, "waiting for dlm recovery thread to exit\n");
  kthread_stop(dlm->dlm_reco_thread_task);
  dlm->dlm_reco_thread_task = ((void*)0);
 }
}
