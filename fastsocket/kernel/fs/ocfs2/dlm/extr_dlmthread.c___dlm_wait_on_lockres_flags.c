
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int state; int wq; int spinlock; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int assert_spin_locked (int *) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

void __dlm_wait_on_lockres_flags(struct dlm_lock_resource *res, int flags)
{
 DECLARE_WAITQUEUE(wait, current);

 assert_spin_locked(&res->spinlock);

 add_wait_queue(&res->wq, &wait);
repeat:
 set_current_state(TASK_UNINTERRUPTIBLE);
 if (res->state & flags) {
  spin_unlock(&res->spinlock);
  schedule();
  spin_lock(&res->spinlock);
  goto repeat;
 }
 remove_wait_queue(&res->wq, &wait);
 __set_current_state(TASK_RUNNING);
}
