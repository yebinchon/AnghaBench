
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {long state; } ;


 int EAGAIN ;
 int EINVAL ;
 int collect_syscall (struct task_struct*,long*,unsigned long*,unsigned int,unsigned long*,unsigned long*) ;
 struct task_struct* current ;
 scalar_t__ unlikely (int) ;
 unsigned long wait_task_inactive (struct task_struct*,long) ;

int task_current_syscall(struct task_struct *target, long *callno,
    unsigned long args[6], unsigned int maxargs,
    unsigned long *sp, unsigned long *pc)
{
 long state;
 unsigned long ncsw;

 if (unlikely(maxargs > 6))
  return -EINVAL;

 if (target == current)
  return collect_syscall(target, callno, args, maxargs, sp, pc);

 state = target->state;
 if (unlikely(!state))
  return -EAGAIN;

 ncsw = wait_task_inactive(target, state);
 if (unlikely(!ncsw) ||
     unlikely(collect_syscall(target, callno, args, maxargs, sp, pc)) ||
     unlikely(wait_task_inactive(target, state) != ncsw))
  return -EAGAIN;

 return 0;
}
