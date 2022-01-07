
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mask_waiter {int mw_status; int mw_complete; } ;
struct ocfs2_lock_res {int dummy; } ;


 int INIT_COMPLETION (int ) ;
 int lockres_remove_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int ocfs2_wait_for_mask_interruptible(struct ocfs2_mask_waiter *mw,
          struct ocfs2_lock_res *lockres)
{
 int ret;

 ret = wait_for_completion_interruptible(&mw->mw_complete);
 if (ret)
  lockres_remove_mask_waiter(lockres, mw);
 else
  ret = mw->mw_status;

 INIT_COMPLETION(mw->mw_complete);
 return ret;
}
