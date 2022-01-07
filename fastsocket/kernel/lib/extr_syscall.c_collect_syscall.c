
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int EAGAIN ;
 unsigned long instruction_pointer (struct pt_regs*) ;
 int syscall_get_arguments (struct task_struct*,struct pt_regs*,int ,unsigned int,unsigned long*) ;
 long syscall_get_nr (struct task_struct*,struct pt_regs*) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 unsigned long user_stack_pointer (struct pt_regs*) ;

__attribute__((used)) static int collect_syscall(struct task_struct *target, long *callno,
      unsigned long args[6], unsigned int maxargs,
      unsigned long *sp, unsigned long *pc)
{
 struct pt_regs *regs = task_pt_regs(target);
 if (unlikely(!regs))
  return -EAGAIN;

 *sp = user_stack_pointer(regs);
 *pc = instruction_pointer(regs);

 *callno = syscall_get_nr(target, regs);
 if (*callno != -1L && maxargs > 0)
  syscall_get_arguments(target, regs, 0, maxargs, args);

 return 0;
}
