
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {int flags; scalar_t__ group_stop_count; } ;


 int SIGNAL_STOP_STOPPED ;
 int TASK_STOPPED ;
 int __set_task_state (struct task_struct*,int ) ;
 int signal_wake_up (struct task_struct*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ task_is_traced (struct task_struct*) ;

__attribute__((used)) static void ptrace_untrace(struct task_struct *child)
{
 spin_lock(&child->sighand->siglock);
 if (task_is_traced(child)) {




  if (child->signal->flags & SIGNAL_STOP_STOPPED ||
      child->signal->group_stop_count)
   __set_task_state(child, TASK_STOPPED);
  else
   signal_wake_up(child, 1);
 }
 spin_unlock(&child->sighand->siglock);
}
