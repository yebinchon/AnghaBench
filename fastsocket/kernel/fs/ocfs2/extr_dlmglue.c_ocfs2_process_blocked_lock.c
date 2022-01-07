
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_unblock_ctl {scalar_t__ unblock_action; scalar_t__ requeue; int member_1; int member_0; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; TYPE_1__* l_ops; int l_lock; int l_name; } ;
struct TYPE_2__ {int (* post_unlock ) (struct ocfs2_super*,struct ocfs2_lock_res*) ;} ;


 int BUG_ON (int) ;
 int OCFS2_LOCK_FREEING ;
 int OCFS2_LOCK_QUEUED ;
 scalar_t__ UNBLOCK_CONTINUE ;
 int lockres_clear_flags (struct ocfs2_lock_res*,int ) ;
 int mlog (int ,char*,int ,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit_void () ;
 int ocfs2_schedule_blocked_lock (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 int ocfs2_unblock_lock (struct ocfs2_super*,struct ocfs2_lock_res*,struct ocfs2_unblock_ctl*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ocfs2_super*,struct ocfs2_lock_res*) ;

__attribute__((used)) static void ocfs2_process_blocked_lock(struct ocfs2_super *osb,
           struct ocfs2_lock_res *lockres)
{
 int status;
 struct ocfs2_unblock_ctl ctl = {0, 0,};
 unsigned long flags;





 mlog_entry_void();

 BUG_ON(!lockres);
 BUG_ON(!lockres->l_ops);

 mlog(0, "lockres %s blocked.\n", lockres->l_name);






 spin_lock_irqsave(&lockres->l_lock, flags);
 if (lockres->l_flags & OCFS2_LOCK_FREEING)
  goto unqueue;
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 status = ocfs2_unblock_lock(osb, lockres, &ctl);
 if (status < 0)
  mlog_errno(status);

 spin_lock_irqsave(&lockres->l_lock, flags);
unqueue:
 if (lockres->l_flags & OCFS2_LOCK_FREEING || !ctl.requeue) {
  lockres_clear_flags(lockres, OCFS2_LOCK_QUEUED);
 } else
  ocfs2_schedule_blocked_lock(osb, lockres);

 mlog(0, "lockres %s, requeue = %s.\n", lockres->l_name,
      ctl.requeue ? "yes" : "no");
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 if (ctl.unblock_action != UNBLOCK_CONTINUE
     && lockres->l_ops->post_unlock)
  lockres->l_ops->post_unlock(osb, lockres);

 mlog_exit_void();
}
