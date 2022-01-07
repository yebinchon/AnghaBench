
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_user_proc {int lockspace; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lock_params {int lkid; int flags; } ;


 int ENOENT ;
 struct dlm_ls* dlm_find_lockspace_local (int ) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int dlm_user_deadlock (struct dlm_ls*,int ,int ) ;

__attribute__((used)) static int device_user_deadlock(struct dlm_user_proc *proc,
    struct dlm_lock_params *params)
{
 struct dlm_ls *ls;
 int error;

 ls = dlm_find_lockspace_local(proc->lockspace);
 if (!ls)
  return -ENOENT;

 error = dlm_user_deadlock(ls, params->flags, params->lkid);

 dlm_put_lockspace(ls);
 return error;
}
