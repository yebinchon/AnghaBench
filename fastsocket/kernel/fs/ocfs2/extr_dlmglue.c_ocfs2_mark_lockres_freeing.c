
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_lock; int l_name; } ;


 int OCFS2_LOCK_FREEING ;
 int OCFS2_LOCK_QUEUED ;
 int lockres_add_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int ) ;
 int mlog (int ,char*,int ) ;
 int mlog_errno (int) ;
 int ocfs2_init_mask_waiter (struct ocfs2_mask_waiter*) ;
 int ocfs2_wait_for_mask (struct ocfs2_mask_waiter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ocfs2_mark_lockres_freeing(struct ocfs2_lock_res *lockres)
{
 int status;
 struct ocfs2_mask_waiter mw;
 unsigned long flags;

 ocfs2_init_mask_waiter(&mw);

 spin_lock_irqsave(&lockres->l_lock, flags);
 lockres->l_flags |= OCFS2_LOCK_FREEING;
 while (lockres->l_flags & OCFS2_LOCK_QUEUED) {
  lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_QUEUED, 0);
  spin_unlock_irqrestore(&lockres->l_lock, flags);

  mlog(0, "Waiting on lockres %s\n", lockres->l_name);

  status = ocfs2_wait_for_mask(&mw);
  if (status)
   mlog_errno(status);

  spin_lock_irqsave(&lockres->l_lock, flags);
 }
 spin_unlock_irqrestore(&lockres->l_lock, flags);
}
