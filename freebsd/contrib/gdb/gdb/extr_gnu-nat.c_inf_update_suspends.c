
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ sc; scalar_t__ cur_sc; struct proc* next; } ;
struct inf {int running; scalar_t__ threads_up_to_date; struct proc* threads; scalar_t__ pending_execs; struct proc* task; } ;


 int inf_debug (struct inf*,char*,...) ;
 int proc_update_sc (struct proc*) ;

int
inf_update_suspends (struct inf *inf)
{
  struct proc *task = inf->task;




  inf_debug (inf, "updating suspend counts");

  if (task)
    {
      struct proc *thread;
      int task_running = (task->sc == 0), thread_running = 0;

      if (task->sc > task->cur_sc)

 task_running = proc_update_sc (task);

      if (inf->pending_execs)


 thread_running = 1;


      for (thread = inf->threads; thread; thread = thread->next)
 thread_running |= proc_update_sc (thread);

      if (task->sc != task->cur_sc)


 task_running = proc_update_sc (task);

      inf_debug (inf, "%srunning...",
   (thread_running && task_running) ? "" : "not ");

      inf->running = thread_running && task_running;



      if (inf->running)
 inf->threads_up_to_date = 0;

      return inf->running;
    }

  return 0;
}
