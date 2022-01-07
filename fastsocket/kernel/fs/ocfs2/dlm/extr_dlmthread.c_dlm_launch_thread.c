
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int * dlm_thread_task; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dlm_thread ;
 int * kthread_run (int ,struct dlm_ctxt*,char*) ;
 int mlog (int ,char*) ;
 int mlog_errno (int ) ;

int dlm_launch_thread(struct dlm_ctxt *dlm)
{
 mlog(0, "starting dlm thread...\n");

 dlm->dlm_thread_task = kthread_run(dlm_thread, dlm, "dlm_thread");
 if (IS_ERR(dlm->dlm_thread_task)) {
  mlog_errno(PTR_ERR(dlm->dlm_thread_task));
  dlm->dlm_thread_task = ((void*)0);
  return -EINVAL;
 }

 return 0;
}
