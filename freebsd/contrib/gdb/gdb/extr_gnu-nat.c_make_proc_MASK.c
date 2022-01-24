#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc {int tid; scalar_t__ state_changed; scalar_t__ state_valid; scalar_t__ dead; scalar_t__ aborted; int /*<<< orphan*/  run_sc; int /*<<< orphan*/  resume_sc; int /*<<< orphan*/  detach_sc; int /*<<< orphan*/  pause_sc; scalar_t__ cur_sc; scalar_t__ sc; scalar_t__ exc_port; scalar_t__ saved_exc_port; scalar_t__ next; struct inf* inf; scalar_t__ port; } ;
struct inf {scalar_t__ event_port; scalar_t__ want_exceptions; int /*<<< orphan*/  default_thread_detach_sc; int /*<<< orphan*/  default_thread_pause_sc; int /*<<< orphan*/  default_thread_run_sc; } ;
typedef  scalar_t__ mach_port_t ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_MSG_TYPE_MAKE_SEND_ONCE ; 
 int /*<<< orphan*/  MACH_NOTIFY_DEAD_NAME ; 
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,char*,...) ; 
 scalar_t__ FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct proc* FUNC8 (int) ; 

struct proc *
FUNC9 (struct inf *inf, mach_port_t port, int tid)
{
  error_t err;
  mach_port_t prev_port = MACH_PORT_NULL;
  struct proc *proc = FUNC8 (sizeof (struct proc));

  proc->port = port;
  proc->tid = tid;
  proc->inf = inf;
  proc->next = 0;
  proc->saved_exc_port = MACH_PORT_NULL;
  proc->exc_port = MACH_PORT_NULL;

  proc->sc = 0;
  proc->cur_sc = 0;

  /* Note that these are all the values for threads; the task simply uses the
     corresponding field in INF directly.  */
  proc->run_sc = inf->default_thread_run_sc;
  proc->pause_sc = inf->default_thread_pause_sc;
  proc->detach_sc = inf->default_thread_detach_sc;
  proc->resume_sc = proc->run_sc;

  proc->aborted = 0;
  proc->dead = 0;
  proc->state_valid = 0;
  proc->state_changed = 0;

  FUNC3 (proc, "is new");

  /* Get notified when things die.  */
  err =
    FUNC1 (FUNC2 (), port,
				    MACH_NOTIFY_DEAD_NAME, 1,
				    inf->event_port,
				    MACH_MSG_TYPE_MAKE_SEND_ONCE,
				    &prev_port);
  if (err)
    FUNC7 ("Couldn't request notification for port %d: %s",
	     port, FUNC6 (err));
  else
    {
      FUNC3 (proc, "notifications to: %d", inf->event_port);
      if (prev_port != MACH_PORT_NULL)
	FUNC0 (FUNC2 (), prev_port);
    }

  if (inf->want_exceptions)
    {
      if (FUNC4 (proc))
	/* Make the task exception port point to us.  */
	FUNC5 (proc, inf->event_port);
      else
	/* Just clear thread exception ports -- they default to the
           task one.  */
	FUNC5 (proc, MACH_PORT_NULL);
    }

  return proc;
}