
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ptrace_detach_task (struct task_struct*,int ) ;

__attribute__((used)) static void ptrace_abort_attach(struct task_struct *tracee)
{
 ptrace_detach_task(tracee, 0);
}
