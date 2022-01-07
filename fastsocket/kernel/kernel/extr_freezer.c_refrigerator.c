
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {long state; int comm; int flags; TYPE_1__* sighand; } ;
struct TYPE_7__ {int siglock; } ;


 int PF_FREEZING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (long) ;
 TYPE_2__* current ;
 scalar_t__ freezing (TYPE_2__*) ;
 int frozen (TYPE_2__*) ;
 int frozen_process () ;
 int pr_debug (char*,int ) ;
 int recalc_sigpending () ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int task_lock (TYPE_2__*) ;
 int task_unlock (TYPE_2__*) ;

void refrigerator(void)
{


 long save;

 task_lock(current);
 if (freezing(current)) {
  frozen_process();
  task_unlock(current);
 } else {
  task_unlock(current);
  return;
 }
 save = current->state;
 pr_debug("%s entered refrigerator\n", current->comm);

 spin_lock_irq(&current->sighand->siglock);
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);


 current->flags |= PF_FREEZING;

 for (;;) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  if (!frozen(current))
   break;
  schedule();
 }


 current->flags &= ~PF_FREEZING;

 pr_debug("%s left refrigerator\n", current->comm);
 __set_current_state(save);
}
