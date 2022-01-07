
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int port; struct proc* next; } ;
struct inf {scalar_t__ stopped; struct proc* threads; int pid; } ;
typedef int process_t ;
typedef scalar_t__ error_t ;


 int inf_debug (struct inf*,char*) ;
 scalar_t__ proc_mark_cont (int ) ;
 scalar_t__ proc_pid2proc (int ,int ,int *) ;
 int proc_server ;
 int safe_strerror (scalar_t__) ;
 int thread_resume (int ) ;
 int warning (char*,int ) ;

void
inf_continue (struct inf *inf)
{
  process_t proc;
  error_t err = proc_pid2proc (proc_server, inf->pid, &proc);

  if (!err)
    {
      inf_debug (inf, "continuing process");

      err = proc_mark_cont (proc);
      if (!err)
 {
   struct proc *thread;

   for (thread = inf->threads; thread; thread = thread->next)
     thread_resume (thread->port);

   inf->stopped = 0;
 }
    }

  if (err)
    warning ("Can't continue process: %s", safe_strerror (err));
}
