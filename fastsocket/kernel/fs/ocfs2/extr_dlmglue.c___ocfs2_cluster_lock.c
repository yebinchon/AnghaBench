
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_super {int s_mount_opt; int cconn; } ;
struct ocfs2_mask_waiter {int mw_mask; } ;
struct TYPE_5__ {int * key; } ;
struct ocfs2_lock_res {int l_flags; int l_level; scalar_t__ l_action; int l_requested; TYPE_2__ l_lockdep_map; int l_lock; int l_name; int l_lksb; TYPE_1__* l_ops; } ;
struct TYPE_4__ {int flags; } ;


 int BUG_ON (int) ;
 int DLM_LKF_CONVERT ;
 int DLM_LKF_NOQUEUE ;
 int DLM_LKF_VALBLK ;
 int DLM_LOCK_IV ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int LOCK_TYPE_USES_LVB ;
 int ML_ERROR ;
 scalar_t__ OCFS2_AST_ATTACH ;
 scalar_t__ OCFS2_AST_CONVERT ;
 scalar_t__ OCFS2_AST_INVALID ;
 int OCFS2_LOCK_ATTACHED ;
 int OCFS2_LOCK_BLOCKED ;
 int OCFS2_LOCK_BUSY ;
 int OCFS2_LOCK_FREEING ;
 scalar_t__ OCFS2_LOCK_ID_MAX_LEN ;
 int OCFS2_LOCK_NONBLOCK ;
 int OCFS2_META_LOCK_NOQUEUE ;
 int OCFS2_MOUNT_NOINTR ;
 int current ;
 int lockres_add_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int ) ;
 int lockres_clear_pending (struct ocfs2_lock_res*,unsigned int,struct ocfs2_super*) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int) ;
 scalar_t__ lockres_remove_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*) ;
 unsigned int lockres_set_pending (struct ocfs2_lock_res*) ;
 int mlog (int ,char*,int ,...) ;
 int mlog_bug_on_msg (int,char*,int ,int) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_dlm_lock (int ,int,int *,int,int ,scalar_t__,struct ocfs2_lock_res*) ;
 int ocfs2_inc_holders (struct ocfs2_lock_res*,int) ;
 int ocfs2_init_mask_waiter (struct ocfs2_mask_waiter*) ;
 int ocfs2_log_dlm_error (char*,int,struct ocfs2_lock_res*) ;
 int ocfs2_may_continue_on_blocked_lock (struct ocfs2_lock_res*,int) ;
 int ocfs2_recover_from_dlm_error (struct ocfs2_lock_res*,int) ;
 int ocfs2_update_lock_stats (struct ocfs2_lock_res*,int,struct ocfs2_mask_waiter*,int) ;
 int ocfs2_wait_for_mask (struct ocfs2_mask_waiter*) ;
 int rwsem_acquire (TYPE_2__*,int,int,unsigned long) ;
 int rwsem_acquire_read (TYPE_2__*,int,int,unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __ocfs2_cluster_lock(struct ocfs2_super *osb,
    struct ocfs2_lock_res *lockres,
    int level,
    u32 lkm_flags,
    int arg_flags,
    int l_subclass,
    unsigned long caller_ip)
{
 struct ocfs2_mask_waiter mw;
 int wait, catch_signals = !(osb->s_mount_opt & OCFS2_MOUNT_NOINTR);
 int ret = 0;
 unsigned long flags;
 unsigned int gen;
 int noqueue_attempted = 0;

 mlog_entry_void();

 ocfs2_init_mask_waiter(&mw);

 if (lockres->l_ops->flags & LOCK_TYPE_USES_LVB)
  lkm_flags |= DLM_LKF_VALBLK;

again:
 wait = 0;

 if (catch_signals && signal_pending(current)) {
  ret = -ERESTARTSYS;
  goto out;
 }

 spin_lock_irqsave(&lockres->l_lock, flags);

 mlog_bug_on_msg(lockres->l_flags & OCFS2_LOCK_FREEING,
   "Cluster lock called on freeing lockres %s! flags "
   "0x%lx\n", lockres->l_name, lockres->l_flags);




 if (lockres->l_flags & OCFS2_LOCK_BUSY &&
     level > lockres->l_level) {


  lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_BUSY, 0);
  wait = 1;
  goto unlock;
 }

 if (lockres->l_flags & OCFS2_LOCK_BLOCKED &&
     !ocfs2_may_continue_on_blocked_lock(lockres, level)) {


  lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_BLOCKED, 0);
  wait = 1;
  goto unlock;
 }

 if (level > lockres->l_level) {
  if (noqueue_attempted > 0) {
   ret = -EAGAIN;
   goto unlock;
  }
  if (lkm_flags & DLM_LKF_NOQUEUE)
   noqueue_attempted = 1;

  if (lockres->l_action != OCFS2_AST_INVALID)
   mlog(ML_ERROR, "lockres %s has action %u pending\n",
        lockres->l_name, lockres->l_action);

  if (!(lockres->l_flags & OCFS2_LOCK_ATTACHED)) {
   lockres->l_action = OCFS2_AST_ATTACH;
   lkm_flags &= ~DLM_LKF_CONVERT;
  } else {
   lockres->l_action = OCFS2_AST_CONVERT;
   lkm_flags |= DLM_LKF_CONVERT;
  }

  lockres->l_requested = level;
  lockres_or_flags(lockres, OCFS2_LOCK_BUSY);
  gen = lockres_set_pending(lockres);
  spin_unlock_irqrestore(&lockres->l_lock, flags);

  BUG_ON(level == DLM_LOCK_IV);
  BUG_ON(level == DLM_LOCK_NL);

  mlog(0, "lock %s, convert from %d to level = %d\n",
       lockres->l_name, lockres->l_level, level);


  ret = ocfs2_dlm_lock(osb->cconn,
         level,
         &lockres->l_lksb,
         lkm_flags,
         lockres->l_name,
         OCFS2_LOCK_ID_MAX_LEN - 1,
         lockres);
  lockres_clear_pending(lockres, gen, osb);
  if (ret) {
   if (!(lkm_flags & DLM_LKF_NOQUEUE) ||
       (ret != -EAGAIN)) {
    ocfs2_log_dlm_error("ocfs2_dlm_lock",
          ret, lockres);
   }
   ocfs2_recover_from_dlm_error(lockres, 1);
   goto out;
  }

  mlog(0, "lock %s, successful return from ocfs2_dlm_lock\n",
       lockres->l_name);



  catch_signals = 0;


  goto again;
 }


 ocfs2_inc_holders(lockres, level);

 ret = 0;
unlock:
 spin_unlock_irqrestore(&lockres->l_lock, flags);
out:
 if (wait && arg_flags & OCFS2_LOCK_NONBLOCK &&
     mw.mw_mask & (OCFS2_LOCK_BUSY|OCFS2_LOCK_BLOCKED)) {
  wait = 0;
  if (lockres_remove_mask_waiter(lockres, &mw))
   ret = -EAGAIN;
  else
   goto again;
 }
 if (wait) {
  ret = ocfs2_wait_for_mask(&mw);
  if (ret == 0)
   goto again;
  mlog_errno(ret);
 }
 ocfs2_update_lock_stats(lockres, level, &mw, ret);
 mlog_exit(ret);
 return ret;
}
