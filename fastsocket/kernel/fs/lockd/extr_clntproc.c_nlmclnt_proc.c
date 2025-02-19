
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int block; } ;
struct nlm_rqst {TYPE_1__ a_args; } ;
struct nlm_host {int dummy; } ;
struct file_lock {scalar_t__ fl_type; TYPE_2__* fl_ops; } ;
struct TYPE_4__ {int (* fl_release_private ) (struct file_lock*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ F_UNLCK ;
 scalar_t__ IS_GETLK (int) ;
 scalar_t__ IS_SETLK (int) ;
 scalar_t__ IS_SETLKW (int) ;
 int dprintk (char*,int) ;
 int lock_kernel () ;
 struct nlm_rqst* nlm_alloc_call (struct nlm_host*) ;
 int nlm_get_host (struct nlm_host*) ;
 int nlmclnt_lock (struct nlm_rqst*,struct file_lock*) ;
 int nlmclnt_locks_init_private (struct file_lock*,struct nlm_host*) ;
 int nlmclnt_setlockargs (struct nlm_rqst*,struct file_lock*) ;
 int nlmclnt_test (struct nlm_rqst*,struct file_lock*) ;
 int nlmclnt_unlock (struct nlm_rqst*,struct file_lock*) ;
 int stub1 (struct file_lock*) ;
 int unlock_kernel () ;

int nlmclnt_proc(struct nlm_host *host, int cmd, struct file_lock *fl)
{
 struct nlm_rqst *call;
 int status;

 nlm_get_host(host);
 call = nlm_alloc_call(host);
 if (call == ((void*)0))
  return -ENOMEM;

 nlmclnt_locks_init_private(fl, host);

 nlmclnt_setlockargs(call, fl);

 lock_kernel();
 if (IS_SETLK(cmd) || IS_SETLKW(cmd)) {
  if (fl->fl_type != F_UNLCK) {
   call->a_args.block = IS_SETLKW(cmd) ? 1 : 0;
   status = nlmclnt_lock(call, fl);
  } else
   status = nlmclnt_unlock(call, fl);
 } else if (IS_GETLK(cmd))
  status = nlmclnt_test(call, fl);
 else
  status = -EINVAL;

 fl->fl_ops->fl_release_private(fl);
 fl->fl_ops = ((void*)0);
 unlock_kernel();

 dprintk("lockd: clnt proc returns %d\n", status);
 return status;
}
