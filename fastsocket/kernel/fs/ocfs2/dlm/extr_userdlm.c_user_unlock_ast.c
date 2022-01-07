
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_flags; int l_event; int l_lock; void* l_requested; void* l_level; int l_name; int l_namelen; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int BUG_ON (int) ;
 int DLM_CANCELGRANT ;
 int DLM_NORMAL ;
 void* LKM_IVMODE ;
 int ML_ERROR ;
 int USER_LOCK_BLOCKED ;
 int USER_LOCK_BUSY ;
 int USER_LOCK_IN_CANCEL ;
 int USER_LOCK_IN_TEARDOWN ;
 int __user_dlm_queue_lockres (struct user_lock_res*) ;
 int mlog (int ,char*,int,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void user_unlock_ast(void *opaque, enum dlm_status status)
{
 struct user_lock_res *lockres = opaque;

 mlog(0, "UNLOCK AST called on lock %.*s\n", lockres->l_namelen,
      lockres->l_name);

 if (status != DLM_NORMAL && status != DLM_CANCELGRANT)
  mlog(ML_ERROR, "Dlm returns status %d\n", status);

 spin_lock(&lockres->l_lock);



 if (lockres->l_flags & USER_LOCK_IN_TEARDOWN
     && !(lockres->l_flags & USER_LOCK_IN_CANCEL)) {
  lockres->l_level = LKM_IVMODE;
 } else if (status == DLM_CANCELGRANT) {



  BUG_ON(!(lockres->l_flags & USER_LOCK_IN_CANCEL));
  lockres->l_flags &= ~USER_LOCK_IN_CANCEL;
  goto out_noclear;
 } else {
  BUG_ON(!(lockres->l_flags & USER_LOCK_IN_CANCEL));

  lockres->l_requested = LKM_IVMODE;


  lockres->l_flags &= ~USER_LOCK_IN_CANCEL;


  if (lockres->l_flags & USER_LOCK_BLOCKED)
   __user_dlm_queue_lockres(lockres);
 }

 lockres->l_flags &= ~USER_LOCK_BUSY;
out_noclear:
 spin_unlock(&lockres->l_lock);

 wake_up(&lockres->l_event);
}
