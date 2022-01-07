
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EIO ;
 int ptrace_do_detach (struct task_struct*,unsigned int) ;
 int utrace_unfreeze_stop (struct task_struct*) ;
 int valid_signal (unsigned int) ;

int ptrace_detach(struct task_struct *child, unsigned int data)
{
 utrace_unfreeze_stop(child);

 if (!valid_signal(data))
  return -EIO;

 ptrace_do_detach(child, data);

 return 0;
}
