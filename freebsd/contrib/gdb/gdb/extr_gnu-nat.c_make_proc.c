
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int tid; scalar_t__ state_changed; scalar_t__ state_valid; scalar_t__ dead; scalar_t__ aborted; int run_sc; int resume_sc; int detach_sc; int pause_sc; scalar_t__ cur_sc; scalar_t__ sc; scalar_t__ exc_port; scalar_t__ saved_exc_port; scalar_t__ next; struct inf* inf; scalar_t__ port; } ;
struct inf {scalar_t__ event_port; scalar_t__ want_exceptions; int default_thread_detach_sc; int default_thread_pause_sc; int default_thread_run_sc; } ;
typedef scalar_t__ mach_port_t ;
typedef scalar_t__ error_t ;


 int MACH_MSG_TYPE_MAKE_SEND_ONCE ;
 int MACH_NOTIFY_DEAD_NAME ;
 scalar_t__ MACH_PORT_NULL ;
 int mach_port_deallocate (int ,scalar_t__) ;
 scalar_t__ mach_port_request_notification (int ,scalar_t__,int ,int,scalar_t__,int ,scalar_t__*) ;
 int mach_task_self () ;
 int proc_debug (struct proc*,char*,...) ;
 scalar_t__ proc_is_task (struct proc*) ;
 int proc_steal_exc_port (struct proc*,scalar_t__) ;
 int safe_strerror (scalar_t__) ;
 int warning (char*,scalar_t__,int ) ;
 struct proc* xmalloc (int) ;

struct proc *
make_proc (struct inf *inf, mach_port_t port, int tid)
{
  error_t err;
  mach_port_t prev_port = MACH_PORT_NULL;
  struct proc *proc = xmalloc (sizeof (struct proc));

  proc->port = port;
  proc->tid = tid;
  proc->inf = inf;
  proc->next = 0;
  proc->saved_exc_port = MACH_PORT_NULL;
  proc->exc_port = MACH_PORT_NULL;

  proc->sc = 0;
  proc->cur_sc = 0;



  proc->run_sc = inf->default_thread_run_sc;
  proc->pause_sc = inf->default_thread_pause_sc;
  proc->detach_sc = inf->default_thread_detach_sc;
  proc->resume_sc = proc->run_sc;

  proc->aborted = 0;
  proc->dead = 0;
  proc->state_valid = 0;
  proc->state_changed = 0;

  proc_debug (proc, "is new");


  err =
    mach_port_request_notification (mach_task_self (), port,
        MACH_NOTIFY_DEAD_NAME, 1,
        inf->event_port,
        MACH_MSG_TYPE_MAKE_SEND_ONCE,
        &prev_port);
  if (err)
    warning ("Couldn't request notification for port %d: %s",
      port, safe_strerror (err));
  else
    {
      proc_debug (proc, "notifications to: %d", inf->event_port);
      if (prev_port != MACH_PORT_NULL)
 mach_port_deallocate (mach_task_self (), prev_port);
    }

  if (inf->want_exceptions)
    {
      if (proc_is_task (proc))

 proc_steal_exc_port (proc, inf->event_port);
      else


 proc_steal_exc_port (proc, MACH_PORT_NULL);
    }

  return proc;
}
