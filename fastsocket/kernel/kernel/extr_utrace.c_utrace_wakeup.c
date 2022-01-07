
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct utrace {int lock; } ;
struct task_struct {TYPE_1__* sighand; int state; TYPE_2__* signal; } ;
struct TYPE_4__ {int flags; scalar_t__ group_stop_count; } ;
struct TYPE_3__ {int siglock; } ;


 int SIGNAL_STOP_STOPPED ;
 int TASK_STOPPED ;
 int __TASK_TRACED ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_state (struct task_struct*,int ) ;

__attribute__((used)) static void utrace_wakeup(struct task_struct *target, struct utrace *utrace)
{
 lockdep_assert_held(&utrace->lock);
 spin_lock_irq(&target->sighand->siglock);
 if (target->signal->flags & SIGNAL_STOP_STOPPED ||
     target->signal->group_stop_count)
  target->state = TASK_STOPPED;
 else
  wake_up_state(target, __TASK_TRACED);
 spin_unlock_irq(&target->sighand->siglock);
}
