
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_flags; int l_level; int l_requested; int l_lock; int l_namelen; int l_name; int l_lksb; } ;
struct dlm_ctxt {int dummy; } ;


 int BUG_ON (int) ;
 int DLM_NORMAL ;
 int DLM_NOTQUEUED ;
 int EAGAIN ;
 int EINVAL ;
 int ERESTARTSYS ;
 int LKM_CONVERT ;
 int LKM_EXMODE ;
 int LKM_IVMODE ;
 int LKM_NLMODE ;
 int LKM_NOQUEUE ;
 int LKM_PRMODE ;
 int LKM_VALBLK ;
 int ML_ERROR ;
 int USER_LOCK_BLOCKED ;
 int USER_LOCK_BUSY ;
 int current ;
 struct dlm_ctxt* dlm_ctxt_from_user_lockres (struct user_lock_res*) ;
 int dlmlock (struct dlm_ctxt*,int,int *,int,int ,int ,int ,struct user_lock_res*,int ) ;
 int mlog (int ,char*,int ,int ,...) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int user_ast ;
 int user_bast ;
 int user_dlm_inc_holders (struct user_lock_res*,int) ;
 int user_log_dlm_error (char*,int,struct user_lock_res*) ;
 int user_may_continue_on_blocked_lock (struct user_lock_res*,int) ;
 int user_recover_from_dlm_error (struct user_lock_res*) ;
 int user_wait_on_blocked_lock (struct user_lock_res*) ;
 int user_wait_on_busy_lock (struct user_lock_res*) ;

int user_dlm_cluster_lock(struct user_lock_res *lockres,
     int level,
     int lkm_flags)
{
 int status, local_flags;
 struct dlm_ctxt *dlm = dlm_ctxt_from_user_lockres(lockres);

 if (level != LKM_EXMODE &&
     level != LKM_PRMODE) {
  mlog(ML_ERROR, "lockres %.*s: invalid request!\n",
       lockres->l_namelen, lockres->l_name);
  status = -EINVAL;
  goto bail;
 }

 mlog(0, "lockres %.*s: asking for %s lock, passed flags = 0x%x\n",
      lockres->l_namelen, lockres->l_name,
      (level == LKM_EXMODE) ? "LKM_EXMODE" : "LKM_PRMODE",
      lkm_flags);

again:
 if (signal_pending(current)) {
  status = -ERESTARTSYS;
  goto bail;
 }

 spin_lock(&lockres->l_lock);




 if ((lockres->l_flags & USER_LOCK_BUSY) &&
     (level > lockres->l_level)) {


  spin_unlock(&lockres->l_lock);

  user_wait_on_busy_lock(lockres);
  goto again;
 }

 if ((lockres->l_flags & USER_LOCK_BLOCKED) &&
     (!user_may_continue_on_blocked_lock(lockres, level))) {


  spin_unlock(&lockres->l_lock);

  user_wait_on_blocked_lock(lockres);
  goto again;
 }

 if (level > lockres->l_level) {
  local_flags = lkm_flags | LKM_VALBLK;
  if (lockres->l_level != LKM_IVMODE)
   local_flags |= LKM_CONVERT;

  lockres->l_requested = level;
  lockres->l_flags |= USER_LOCK_BUSY;
  spin_unlock(&lockres->l_lock);

  BUG_ON(level == LKM_IVMODE);
  BUG_ON(level == LKM_NLMODE);


  status = dlmlock(dlm,
     level,
     &lockres->l_lksb,
     local_flags,
     lockres->l_name,
     lockres->l_namelen,
     user_ast,
     lockres,
     user_bast);
  if (status != DLM_NORMAL) {
   if ((lkm_flags & LKM_NOQUEUE) &&
       (status == DLM_NOTQUEUED))
    status = -EAGAIN;
   else {
    user_log_dlm_error("dlmlock", status, lockres);
    status = -EINVAL;
   }
   user_recover_from_dlm_error(lockres);
   goto bail;
  }

  user_wait_on_busy_lock(lockres);
  goto again;
 }

 user_dlm_inc_holders(lockres, level);
 spin_unlock(&lockres->l_lock);

 status = 0;
bail:
 return status;
}
