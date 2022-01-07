
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; } ;
struct TYPE_4__ {int block; } ;
struct nlm_rqst {TYPE_1__ a_res; int a_count; TYPE_2__ a_args; int a_flags; } ;
struct nlm_host {int dummy; } ;
struct file_lock {int fl_file; } ;


 int ENOLCK ;
 int ENOMEM ;
 int NLMPROC_CANCEL ;
 int RPC_TASK_ASYNC ;
 int atomic_inc (int *) ;
 int dprintk (char*) ;
 int nfs_file_cred (int ) ;
 struct nlm_rqst* nlm_alloc_call (int ) ;
 int nlm_get_host (struct nlm_host*) ;
 scalar_t__ nlm_lck_denied ;
 int nlm_release_call (struct nlm_rqst*) ;
 int nlmclnt_async_call (int ,struct nlm_rqst*,int ,int *) ;
 int nlmclnt_cancel_ops ;
 int nlmclnt_setlockargs (struct nlm_rqst*,struct file_lock*) ;

__attribute__((used)) static int nlmclnt_cancel(struct nlm_host *host, int block, struct file_lock *fl)
{
 struct nlm_rqst *req;
 int status;

 dprintk("lockd: blocking lock attempt was interrupted by a signal.\n"
  "       Attempting to cancel lock.\n");

 req = nlm_alloc_call(nlm_get_host(host));
 if (!req)
  return -ENOMEM;
 req->a_flags = RPC_TASK_ASYNC;

 nlmclnt_setlockargs(req, fl);
 req->a_args.block = block;

 atomic_inc(&req->a_count);
 status = nlmclnt_async_call(nfs_file_cred(fl->fl_file), req,
   NLMPROC_CANCEL, &nlmclnt_cancel_ops);
 if (status == 0 && req->a_res.status == nlm_lck_denied)
  status = -ENOLCK;
 nlm_release_call(req);
 return status;
}
