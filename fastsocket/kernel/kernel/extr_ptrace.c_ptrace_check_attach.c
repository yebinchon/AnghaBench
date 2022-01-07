
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int ptrace; scalar_t__ parent; TYPE_1__* sighand; int state; } ;
struct TYPE_2__ {int siglock; } ;


 int ESRCH ;
 int PT_PTRACED ;
 int TASK_TRACED ;
 scalar_t__ current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ task_is_stopped (struct task_struct*) ;
 int task_is_traced (struct task_struct*) ;
 int tasklist_lock ;
 scalar_t__ wait_task_inactive (struct task_struct*,int ) ;

int ptrace_check_attach(struct task_struct *child, int kill)
{
 int ret = -ESRCH;
 read_lock(&tasklist_lock);
 if ((child->ptrace & PT_PTRACED) && child->parent == current) {
  ret = 0;




  spin_lock_irq(&child->sighand->siglock);
  if (task_is_stopped(child))
   child->state = TASK_TRACED;
  else if (!task_is_traced(child) && !kill)
   ret = -ESRCH;
  spin_unlock_irq(&child->sighand->siglock);
 }
 read_unlock(&tasklist_lock);

 if (!ret && !kill)
  ret = wait_task_inactive(child, TASK_TRACED) ? 0 : -ESRCH;


 return ret;
}
