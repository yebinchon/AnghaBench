
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* sighand; int comm; } ;
struct TYPE_2__ {int siglock; } ;


 int clear_freeze_flag (struct task_struct*) ;
 scalar_t__ freezing (struct task_struct*) ;
 int pr_debug (char*,int ) ;
 int recalc_sigpending_and_wake (struct task_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cancel_freezing(struct task_struct *p)
{
 unsigned long flags;

 if (freezing(p)) {
  pr_debug("  clean up: %s\n", p->comm);
  clear_freeze_flag(p);
  spin_lock_irqsave(&p->sighand->siglock, flags);
  recalc_sigpending_and_wake(p);
  spin_unlock_irqrestore(&p->sighand->siglock, flags);
 }
}
