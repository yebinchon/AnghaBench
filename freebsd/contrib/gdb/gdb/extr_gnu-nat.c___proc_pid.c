
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {TYPE_1__* inf; } ;
struct TYPE_2__ {int pid; } ;



int
__proc_pid (struct proc *proc)
{
  return proc->inf->pid;
}
