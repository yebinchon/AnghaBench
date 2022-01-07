
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mask_waiter {int mw_mask; int mw_goal; int mw_complete; int mw_item; } ;
struct ocfs2_lock_res {int l_flags; int l_lock; } ;


 int EBUSY ;
 int init_completion (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lockres_remove_mask_waiter(struct ocfs2_lock_res *lockres,
          struct ocfs2_mask_waiter *mw)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&lockres->l_lock, flags);
 if (!list_empty(&mw->mw_item)) {
  if ((lockres->l_flags & mw->mw_mask) != mw->mw_goal)
   ret = -EBUSY;

  list_del_init(&mw->mw_item);
  init_completion(&mw->mw_complete);
 }
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 return ret;

}
