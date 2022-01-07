
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_binprm {int cred; } ;
struct TYPE_2__ {int cred_guard_mutex; } ;


 int ENOMEM ;
 int ERESTARTNOINTR ;
 TYPE_1__* current ;
 scalar_t__ likely (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int prepare_exec_creds () ;

int prepare_bprm_creds(struct linux_binprm *bprm)
{
 if (mutex_lock_interruptible(&current->cred_guard_mutex))
  return -ERESTARTNOINTR;

 bprm->cred = prepare_exec_creds();
 if (likely(bprm->cred))
  return 0;

 mutex_unlock(&current->cred_guard_mutex);
 return -ENOMEM;
}
