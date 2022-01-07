
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc {int port; } ;
struct TYPE_3__ {struct proc* task; } ;


 TYPE_1__* current_inferior ;
 int inf_set_pid (TYPE_1__*,int) ;
 int proc_debug (struct proc*,char*) ;
 int target_mourn_inferior () ;
 int task_terminate (int ) ;

__attribute__((used)) static void
gnu_kill_inferior (void)
{
  struct proc *task = current_inferior->task;
  if (task)
    {
      proc_debug (task, "terminating...");
      task_terminate (task->port);
      inf_set_pid (current_inferior, -1);
    }
  target_mourn_inferior ();
}
