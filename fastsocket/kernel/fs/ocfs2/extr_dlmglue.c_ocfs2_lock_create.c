
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int cconn; } ;
struct ocfs2_lock_res {int l_flags; int l_requested; int l_name; int l_lksb; int l_lock; int l_action; } ;


 int OCFS2_AST_ATTACH ;
 int OCFS2_LOCK_ATTACHED ;
 int OCFS2_LOCK_BUSY ;
 scalar_t__ OCFS2_LOCK_ID_MAX_LEN ;
 int lockres_clear_pending (struct ocfs2_lock_res*,unsigned int,struct ocfs2_super*) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int) ;
 unsigned int lockres_set_pending (struct ocfs2_lock_res*) ;
 int mlog (int ,char*,int ,...) ;
 int mlog_entry_void () ;
 int mlog_exit (int) ;
 int ocfs2_dlm_lock (int ,int,int *,int ,int ,scalar_t__,struct ocfs2_lock_res*) ;
 int ocfs2_log_dlm_error (char*,int,struct ocfs2_lock_res*) ;
 int ocfs2_recover_from_dlm_error (struct ocfs2_lock_res*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ocfs2_lock_create(struct ocfs2_super *osb,
        struct ocfs2_lock_res *lockres,
        int level,
        u32 dlm_flags)
{
 int ret = 0;
 unsigned long flags;
 unsigned int gen;

 mlog_entry_void();

 mlog(0, "lock %s, level = %d, flags = %u\n", lockres->l_name, level,
      dlm_flags);

 spin_lock_irqsave(&lockres->l_lock, flags);
 if ((lockres->l_flags & OCFS2_LOCK_ATTACHED) ||
     (lockres->l_flags & OCFS2_LOCK_BUSY)) {
  spin_unlock_irqrestore(&lockres->l_lock, flags);
  goto bail;
 }

 lockres->l_action = OCFS2_AST_ATTACH;
 lockres->l_requested = level;
 lockres_or_flags(lockres, OCFS2_LOCK_BUSY);
 gen = lockres_set_pending(lockres);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 ret = ocfs2_dlm_lock(osb->cconn,
        level,
        &lockres->l_lksb,
        dlm_flags,
        lockres->l_name,
        OCFS2_LOCK_ID_MAX_LEN - 1,
        lockres);
 lockres_clear_pending(lockres, gen, osb);
 if (ret) {
  ocfs2_log_dlm_error("ocfs2_dlm_lock", ret, lockres);
  ocfs2_recover_from_dlm_error(lockres, 1);
 }

 mlog(0, "lock %s, return from ocfs2_dlm_lock\n", lockres->l_name);

bail:
 mlog_exit(ret);
 return ret;
}
