
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kioctx {int ctx_lock; int wait; scalar_t__ reqs_active; } ;


 int DECLARE_WAITQUEUE (int ,struct task_struct*) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_task_state (struct task_struct*,int ) ;
 int add_wait_queue (int *,int *) ;
 struct task_struct* current ;
 int io_schedule () ;
 int remove_wait_queue (int *,int *) ;
 int set_task_state (struct task_struct*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait ;

__attribute__((used)) static void wait_for_all_aios(struct kioctx *ctx)
{
 struct task_struct *tsk = current;
 DECLARE_WAITQUEUE(wait, tsk);

 spin_lock_irq(&ctx->ctx_lock);
 if (!ctx->reqs_active)
  goto out;

 add_wait_queue(&ctx->wait, &wait);
 set_task_state(tsk, TASK_UNINTERRUPTIBLE);
 while (ctx->reqs_active) {
  spin_unlock_irq(&ctx->ctx_lock);
  io_schedule();
  set_task_state(tsk, TASK_UNINTERRUPTIBLE);
  spin_lock_irq(&ctx->ctx_lock);
 }
 __set_task_state(tsk, TASK_RUNNING);
 remove_wait_queue(&ctx->wait, &wait);

out:
 spin_unlock_irq(&ctx->ctx_lock);
}
