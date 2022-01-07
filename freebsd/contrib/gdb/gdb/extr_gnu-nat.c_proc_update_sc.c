
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_state_t ;
struct proc {int sc; int cur_sc; scalar_t__ fetched_regs; scalar_t__ state_changed; scalar_t__ state_valid; scalar_t__ aborted; int port; int state; } ;


 int THREAD_STATE_FLAVOR ;
 int THREAD_STATE_SIZE ;
 int gdb_assert (int ) ;
 int proc_debug (struct proc*,char*,...) ;
 scalar_t__ proc_is_task (struct proc*) ;
 int proc_is_thread (struct proc*) ;
 char* safe_strerror (int) ;
 int task_resume (int ) ;
 int task_suspend (int ) ;
 int thread_resume (int ) ;
 int thread_set_state (int ,int ,int ,int ) ;
 int thread_suspend (int ) ;

int
proc_update_sc (struct proc *proc)
{
  int running;
  int err = 0;
  int delta = proc->sc - proc->cur_sc;

  if (delta)
    proc_debug (proc, "sc: %d --> %d", proc->cur_sc, proc->sc);

  if (proc->sc == 0 && proc->state_changed)

    {
      gdb_assert (proc_is_thread (proc));
      proc_debug (proc, "storing back changed thread state");
      err = thread_set_state (proc->port, THREAD_STATE_FLAVOR,
    (thread_state_t) &proc->state, THREAD_STATE_SIZE);
      if (!err)
 proc->state_changed = 0;
    }

  if (delta > 0)
    {
      while (delta-- > 0 && !err)
 {
   if (proc_is_task (proc))
     err = task_suspend (proc->port);
   else
     err = thread_suspend (proc->port);
 }
    }
  else
    {
      while (delta++ < 0 && !err)
 {
   if (proc_is_task (proc))
     err = task_resume (proc->port);
   else
     err = thread_resume (proc->port);
 }
    }
  if (!err)
    proc->cur_sc = proc->sc;


  running = !err && proc->sc == 0;

  proc_debug (proc, "is %s", err ? "dead" : running ? "running" : "suspended");
  if (err)
    proc_debug (proc, "err = %s", safe_strerror (err));

  if (running)
    {
      proc->aborted = 0;
      proc->state_valid = proc->state_changed = 0;
      proc->fetched_regs = 0;
    }

  return running;
}
