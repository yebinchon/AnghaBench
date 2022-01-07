
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_t ;
struct proc {scalar_t__ port; int sc; int cur_sc; } ;
struct inf {int pid; struct proc* task; scalar_t__ pause_sc; scalar_t__ threads_up_to_date; } ;
typedef scalar_t__ pid_t ;
typedef scalar_t__ error_t ;


 scalar_t__ MACH_PORT_NULL ;
 int PROC_TID_TASK ;
 int _proc_free (struct proc*) ;
 int error (char*,scalar_t__,char*) ;
 int inf_debug (struct inf*,char*,scalar_t__) ;
 int inf_validate_procs (struct inf*) ;
 struct proc* make_proc (struct inf*,scalar_t__,int ) ;
 scalar_t__ proc_pid2task (int ,scalar_t__,scalar_t__*) ;
 int proc_server ;
 char* safe_strerror (scalar_t__) ;
 int task_suspend (scalar_t__) ;

void
inf_set_pid (struct inf *inf, pid_t pid)
{
  task_t task_port;
  struct proc *task = inf->task;

  inf_debug (inf, "setting pid: %d", pid);

  if (pid < 0)
    task_port = MACH_PORT_NULL;
  else
    {
      error_t err = proc_pid2task (proc_server, pid, &task_port);
      if (err)
 error ("Error getting task for pid %d: %s", pid, safe_strerror (err));
    }

  inf_debug (inf, "setting task: %d", task_port);

  if (inf->pause_sc)
    task_suspend (task_port);

  if (task && task->port != task_port)
    {
      inf->task = 0;
      inf_validate_procs (inf);
      _proc_free (task);
    }

  if (task_port != MACH_PORT_NULL)
    {
      inf->task = make_proc (inf, task_port, PROC_TID_TASK);
      inf->threads_up_to_date = 0;
    }

  if (inf->task)
    {
      inf->pid = pid;
      if (inf->pause_sc)

 inf->task->sc = inf->task->cur_sc = 1;
    }
  else
    inf->pid = -1;
}
