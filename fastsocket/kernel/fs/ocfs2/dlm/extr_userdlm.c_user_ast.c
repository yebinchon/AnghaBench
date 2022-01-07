
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lockstatus {scalar_t__ status; } ;
struct user_lock_res {scalar_t__ l_requested; scalar_t__ l_level; int l_event; int l_lock; int l_flags; int l_blocking; int l_name; int l_namelen; struct dlm_lockstatus l_lksb; } ;


 scalar_t__ DLM_NORMAL ;
 scalar_t__ LKM_IVMODE ;
 int LKM_NLMODE ;
 int ML_ERROR ;
 int USER_LOCK_ATTACHED ;
 int USER_LOCK_BLOCKED ;
 int USER_LOCK_BUSY ;
 int mlog (int ,char*,scalar_t__,int ,...) ;
 int mlog_bug_on_msg (int,char*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ user_highest_compat_lock_level (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void user_ast(void *opaque)
{
 struct user_lock_res *lockres = opaque;
 struct dlm_lockstatus *lksb;

 mlog(0, "AST fired for lockres %.*s\n", lockres->l_namelen,
      lockres->l_name);

 spin_lock(&lockres->l_lock);

 lksb = &(lockres->l_lksb);
 if (lksb->status != DLM_NORMAL) {
  mlog(ML_ERROR, "lksb status value of %u on lockres %.*s\n",
       lksb->status, lockres->l_namelen, lockres->l_name);
  spin_unlock(&lockres->l_lock);
  return;
 }

 mlog_bug_on_msg(lockres->l_requested == LKM_IVMODE,
   "Lockres %.*s, requested ivmode. flags 0x%x\n",
   lockres->l_namelen, lockres->l_name, lockres->l_flags);


 if (lockres->l_requested < lockres->l_level) {
  if (lockres->l_requested <=
      user_highest_compat_lock_level(lockres->l_blocking)) {
   lockres->l_blocking = LKM_NLMODE;
   lockres->l_flags &= ~USER_LOCK_BLOCKED;
  }
 }

 lockres->l_level = lockres->l_requested;
 lockres->l_requested = LKM_IVMODE;
 lockres->l_flags |= USER_LOCK_ATTACHED;
 lockres->l_flags &= ~USER_LOCK_BUSY;

 spin_unlock(&lockres->l_lock);

 wake_up(&lockres->l_event);
}
