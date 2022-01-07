
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __ptrace_may_access (struct task_struct*,unsigned int) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

bool ptrace_may_access(struct task_struct *task, unsigned int mode)
{
 int err;
 task_lock(task);
 err = __ptrace_may_access(task, mode);
 task_unlock(task);
 return !err;
}
