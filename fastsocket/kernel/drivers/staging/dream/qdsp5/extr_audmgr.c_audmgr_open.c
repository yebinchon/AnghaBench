
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audmgr {scalar_t__ state; int * ept; int * task; int wait; } ;


 int AUDMGR_PROG ;
 int AUDMGR_VERS ;
 scalar_t__ IS_ERR (int *) ;
 int MSM_RPC_UNINTERRUPTIBLE ;
 int PTR_ERR (int *) ;
 scalar_t__ STATE_CLOSED ;
 scalar_t__ STATE_DISABLED ;
 int audmgr_rpc_thread ;
 int init_waitqueue_head (int *) ;
 int * kthread_run (int ,struct audmgr*,char*) ;
 int msm_rpc_close (int *) ;
 int * msm_rpc_connect (int ,int ,int ) ;
 int pr_err (char*) ;

int audmgr_open(struct audmgr *am)
{
 int rc;

 if (am->state != STATE_CLOSED)
  return 0;

 am->ept = msm_rpc_connect(AUDMGR_PROG,
    AUDMGR_VERS,
    MSM_RPC_UNINTERRUPTIBLE);

 init_waitqueue_head(&am->wait);

 if (IS_ERR(am->ept)) {
  rc = PTR_ERR(am->ept);
  am->ept = ((void*)0);
  pr_err("audmgr: failed to connect to audmgr svc\n");
  return rc;
 }

 am->task = kthread_run(audmgr_rpc_thread, am, "audmgr_rpc");
 if (IS_ERR(am->task)) {
  rc = PTR_ERR(am->task);
  am->task = ((void*)0);
  msm_rpc_close(am->ept);
  am->ept = ((void*)0);
  return rc;
 }

 am->state = STATE_DISABLED;
 return 0;
}
