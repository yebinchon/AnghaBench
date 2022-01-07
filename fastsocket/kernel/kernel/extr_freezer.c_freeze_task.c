
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TASK_INTERRUPTIBLE ;
 int fake_signal_wake_up (struct task_struct*) ;
 int freezing (struct task_struct*) ;
 scalar_t__ frozen (struct task_struct*) ;
 int rmb () ;
 int set_freeze_flag (struct task_struct*) ;
 scalar_t__ should_send_signal (struct task_struct*) ;
 int signal_pending (struct task_struct*) ;
 int wake_up_state (struct task_struct*,int ) ;

bool freeze_task(struct task_struct *p, bool sig_only)
{





 if (!freezing(p)) {
  rmb();
  if (frozen(p))
   return 0;

  if (!sig_only || should_send_signal(p))
   set_freeze_flag(p);
  else
   return 0;
 }

 if (should_send_signal(p)) {
  if (!signal_pending(p))
   fake_signal_wake_up(p);
 } else if (sig_only) {
  return 0;
 } else {
  wake_up_state(p, TASK_INTERRUPTIBLE);
 }

 return 1;
}
