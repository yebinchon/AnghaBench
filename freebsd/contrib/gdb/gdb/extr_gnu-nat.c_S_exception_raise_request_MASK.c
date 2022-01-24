#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_t ;
typedef  scalar_t__ task_t ;
struct proc {scalar_t__ exc_port; scalar_t__ saved_exc_port; int /*<<< orphan*/  aborted; } ;
struct TYPE_8__ {int /*<<< orphan*/  sig; } ;
struct TYPE_9__ {TYPE_3__ value; int /*<<< orphan*/  kind; } ;
struct TYPE_7__ {scalar_t__ handler; int exception; int code; int subcode; scalar_t__ reply; } ;
struct TYPE_10__ {int suppress; TYPE_4__ status; TYPE_2__ exc; struct proc* thread; } ;
struct inf {TYPE_5__ wait; TYPE_1__* task; } ;
typedef  scalar_t__ mach_port_t ;
typedef  int /*<<< orphan*/  error_t ;
struct TYPE_6__ {scalar_t__ saved_exc_port; scalar_t__ exc_port; } ;

/* Variables and functions */
 int EXC_BREAKPOINT ; 
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_SEND ; 
 int /*<<< orphan*/  TARGET_SIGNAL_TRAP ; 
 int /*<<< orphan*/  TARGET_WAITKIND_STOPPED ; 
 scalar_t__ _NSIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*,char*,scalar_t__,...) ; 
 struct proc* FUNC2 (struct inf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct inf* waiting_inf ; 

error_t
FUNC8 (mach_port_t port, mach_port_t reply_port,
			   thread_t thread_port, task_t task_port,
			   int exception, int code, int subcode)
{
  struct inf *inf = waiting_inf;
  struct proc *thread = FUNC2 (inf, thread_port);

  FUNC1 (waiting_inf,
	     "thread = %d, task = %d, exc = %d, code = %d, subcode = %d",
	     thread_port, task_port, exception, code, subcode);

  if (!thread)
    /* We don't know about thread?  */
    {
      FUNC3 (inf);
      thread = FUNC2 (inf, thread_port);
      if (!thread)
	/* Give up, the generating thread is gone.  */
	return 0;
    }

  FUNC4 (FUNC6 (), thread_port);
  FUNC4 (FUNC6 (), task_port);

  if (!thread->aborted)
    /* THREAD hasn't been aborted since this exception happened (abortion
       clears any exception state), so it must be real.  */
    {
      /* Store away the details; this will destroy any previous info.  */
      inf->wait.thread = thread;

      inf->wait.status.kind = TARGET_WAITKIND_STOPPED;

      if (exception == EXC_BREAKPOINT)
	/* GDB likes to get SIGTRAP for breakpoints.  */
	{
	  inf->wait.status.value.sig = TARGET_SIGNAL_TRAP;
	  FUNC4 (FUNC6 (), reply_port);
	}
      else
	/* Record the exception so that we can forward it later.  */
	{
	  if (thread->exc_port == port)
	    {
	      FUNC1 (waiting_inf, "Handler is thread exception port <%d>",
			 thread->saved_exc_port);
	      inf->wait.exc.handler = thread->saved_exc_port;
	    }
	  else
	    {
	      FUNC1 (waiting_inf, "Handler is task exception port <%d>",
			 inf->task->saved_exc_port);
	      inf->wait.exc.handler = inf->task->saved_exc_port;
	      FUNC0 (inf->task->exc_port == port);
	    }
	  if (inf->wait.exc.handler != MACH_PORT_NULL)
	    /* Add a reference to the exception handler. */
	    FUNC5 (FUNC6 (),
				inf->wait.exc.handler, MACH_PORT_RIGHT_SEND,
				1);

	  inf->wait.exc.exception = exception;
	  inf->wait.exc.code = code;
	  inf->wait.exc.subcode = subcode;
	  inf->wait.exc.reply = reply_port;

	  /* Exceptions are encoded in the signal space by putting them after
	     _NSIG; this assumes they're positive (and not extremely large)! */
	  inf->wait.status.value.sig =
	    FUNC7 (_NSIG + exception);
	}
    }
  else
    /* A supppressed exception, which ignore.  */
    {
      inf->wait.suppress = 1;
      FUNC4 (FUNC6 (), reply_port);
    }

  return 0;
}