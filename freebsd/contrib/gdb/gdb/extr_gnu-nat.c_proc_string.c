
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int tid; TYPE_1__* inf; } ;
struct TYPE_2__ {int pid; } ;


 int MERGEPID (int ,int ) ;
 int pid_to_thread_id (int ) ;
 scalar_t__ proc_is_task (struct proc*) ;
 int sprintf (char*,char*,int,...) ;

char *
proc_string (struct proc *proc)
{
  static char tid_str[80];
  if (proc_is_task (proc))
    sprintf (tid_str, "process %d", proc->inf->pid);
  else
    sprintf (tid_str, "thread %d.%d",
      proc->inf->pid, pid_to_thread_id (MERGEPID (proc->tid, 0)));
  return tid_str;
}
