
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * last_siginfo; } ;
typedef int siginfo_t ;


 int EINVAL ;
 int ESRCH ;
 scalar_t__ likely (int ) ;
 scalar_t__ lock_task_sighand (struct task_struct*,unsigned long*) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static int ptrace_getsiginfo(struct task_struct *child, siginfo_t *info)
{
 unsigned long flags;
 int error = -ESRCH;

 if (lock_task_sighand(child, &flags)) {
  error = -EINVAL;
  if (likely(child->last_siginfo != ((void*)0))) {
   *info = *child->last_siginfo;
   error = 0;
  }
  unlock_task_sighand(child, &flags);
 }
 return error;
}
