
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_flags; int l_lksb; int l_lock; scalar_t__ l_ex_holders; scalar_t__ l_ro_holders; int l_name; int l_namelen; } ;
struct dlm_ctxt {int dummy; } ;


 int DLM_NORMAL ;
 int EBUSY ;
 int EINVAL ;
 int LKM_VALBLK ;
 int USER_LOCK_ATTACHED ;
 int USER_LOCK_BUSY ;
 int USER_LOCK_IN_TEARDOWN ;
 struct dlm_ctxt* dlm_ctxt_from_user_lockres (struct user_lock_res*) ;
 int dlmunlock (struct dlm_ctxt*,int *,int ,int ,struct user_lock_res*) ;
 int mlog (int ,char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int user_log_dlm_error (char*,int,struct user_lock_res*) ;
 int user_unlock_ast ;
 int user_wait_on_busy_lock (struct user_lock_res*) ;

int user_dlm_destroy_lock(struct user_lock_res *lockres)
{
 int status = -EBUSY;
 struct dlm_ctxt *dlm = dlm_ctxt_from_user_lockres(lockres);

 mlog(0, "asked to destroy %.*s\n", lockres->l_namelen, lockres->l_name);

 spin_lock(&lockres->l_lock);
 if (lockres->l_flags & USER_LOCK_IN_TEARDOWN) {
  spin_unlock(&lockres->l_lock);
  return 0;
 }

 lockres->l_flags |= USER_LOCK_IN_TEARDOWN;

 while (lockres->l_flags & USER_LOCK_BUSY) {
  spin_unlock(&lockres->l_lock);

  user_wait_on_busy_lock(lockres);

  spin_lock(&lockres->l_lock);
 }

 if (lockres->l_ro_holders || lockres->l_ex_holders) {
  spin_unlock(&lockres->l_lock);
  goto bail;
 }

 status = 0;
 if (!(lockres->l_flags & USER_LOCK_ATTACHED)) {
  spin_unlock(&lockres->l_lock);
  goto bail;
 }

 lockres->l_flags &= ~USER_LOCK_ATTACHED;
 lockres->l_flags |= USER_LOCK_BUSY;
 spin_unlock(&lockres->l_lock);

 status = dlmunlock(dlm,
      &lockres->l_lksb,
      LKM_VALBLK,
      user_unlock_ast,
      lockres);
 if (status != DLM_NORMAL) {
  user_log_dlm_error("dlmunlock", status, lockres);
  status = -EINVAL;
  goto bail;
 }

 user_wait_on_busy_lock(lockres);

 status = 0;
bail:
 return status;
}
