
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef scalar_t__ task_t ;
struct proc {scalar_t__ exc_port; scalar_t__ saved_exc_port; int aborted; } ;
struct TYPE_8__ {int sig; } ;
struct TYPE_9__ {TYPE_3__ value; int kind; } ;
struct TYPE_7__ {scalar_t__ handler; int exception; int code; int subcode; scalar_t__ reply; } ;
struct TYPE_10__ {int suppress; TYPE_4__ status; TYPE_2__ exc; struct proc* thread; } ;
struct inf {TYPE_5__ wait; TYPE_1__* task; } ;
typedef scalar_t__ mach_port_t ;
typedef int error_t ;
struct TYPE_6__ {scalar_t__ saved_exc_port; scalar_t__ exc_port; } ;


 int EXC_BREAKPOINT ;
 scalar_t__ MACH_PORT_NULL ;
 int MACH_PORT_RIGHT_SEND ;
 int TARGET_SIGNAL_TRAP ;
 int TARGET_WAITKIND_STOPPED ;
 scalar_t__ _NSIG ;
 int gdb_assert (int) ;
 int inf_debug (struct inf*,char*,scalar_t__,...) ;
 struct proc* inf_port_to_thread (struct inf*,scalar_t__) ;
 int inf_update_procs (struct inf*) ;
 int mach_port_deallocate (int ,scalar_t__) ;
 int mach_port_mod_refs (int ,scalar_t__,int ,int) ;
 int mach_task_self () ;
 int target_signal_from_host (scalar_t__) ;
 struct inf* waiting_inf ;

error_t
S_exception_raise_request (mach_port_t port, mach_port_t reply_port,
      thread_t thread_port, task_t task_port,
      int exception, int code, int subcode)
{
  struct inf *inf = waiting_inf;
  struct proc *thread = inf_port_to_thread (inf, thread_port);

  inf_debug (waiting_inf,
      "thread = %d, task = %d, exc = %d, code = %d, subcode = %d",
      thread_port, task_port, exception, code, subcode);

  if (!thread)

    {
      inf_update_procs (inf);
      thread = inf_port_to_thread (inf, thread_port);
      if (!thread)

 return 0;
    }

  mach_port_deallocate (mach_task_self (), thread_port);
  mach_port_deallocate (mach_task_self (), task_port);

  if (!thread->aborted)


    {

      inf->wait.thread = thread;

      inf->wait.status.kind = TARGET_WAITKIND_STOPPED;

      if (exception == EXC_BREAKPOINT)

 {
   inf->wait.status.value.sig = TARGET_SIGNAL_TRAP;
   mach_port_deallocate (mach_task_self (), reply_port);
 }
      else

 {
   if (thread->exc_port == port)
     {
       inf_debug (waiting_inf, "Handler is thread exception port <%d>",
    thread->saved_exc_port);
       inf->wait.exc.handler = thread->saved_exc_port;
     }
   else
     {
       inf_debug (waiting_inf, "Handler is task exception port <%d>",
    inf->task->saved_exc_port);
       inf->wait.exc.handler = inf->task->saved_exc_port;
       gdb_assert (inf->task->exc_port == port);
     }
   if (inf->wait.exc.handler != MACH_PORT_NULL)

     mach_port_mod_refs (mach_task_self (),
    inf->wait.exc.handler, MACH_PORT_RIGHT_SEND,
    1);

   inf->wait.exc.exception = exception;
   inf->wait.exc.code = code;
   inf->wait.exc.subcode = subcode;
   inf->wait.exc.reply = reply_port;



   inf->wait.status.value.sig =
     target_signal_from_host (_NSIG + exception);
 }
    }
  else

    {
      inf->wait.suppress = 1;
      mach_port_deallocate (mach_task_self (), reply_port);
    }

  return 0;
}
