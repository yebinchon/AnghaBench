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
typedef  int /*<<< orphan*/  thread_state_t ;
struct proc {int sc; int cur_sc; scalar_t__ fetched_regs; scalar_t__ state_changed; scalar_t__ state_valid; scalar_t__ aborted; int /*<<< orphan*/  port; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_STATE_FLAVOR ; 
 int /*<<< orphan*/  THREAD_STATE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,char*,...) ; 
 scalar_t__ FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10 (struct proc *proc)
{
  int running;
  int err = 0;
  int delta = proc->sc - proc->cur_sc;

  if (delta)
    FUNC1 (proc, "sc: %d --> %d", proc->cur_sc, proc->sc);

  if (proc->sc == 0 && proc->state_changed)
    /* Since PROC may start running, we must write back any state changes. */
    {
      FUNC0 (FUNC3 (proc));
      FUNC1 (proc, "storing back changed thread state");
      err = FUNC8 (proc->port, THREAD_STATE_FLAVOR,
			 (thread_state_t) &proc->state, THREAD_STATE_SIZE);
      if (!err)
	proc->state_changed = 0;
    }

  if (delta > 0)
    {
      while (delta-- > 0 && !err)
	{
	  if (FUNC2 (proc))
	    err = FUNC6 (proc->port);
	  else
	    err = FUNC9 (proc->port);
	}
    }
  else
    {
      while (delta++ < 0 && !err)
	{
	  if (FUNC2 (proc))
	    err = FUNC5 (proc->port);
	  else
	    err = FUNC7 (proc->port);
	}
    }
  if (!err)
    proc->cur_sc = proc->sc;

  /* If we got an error, then the task/thread has disappeared.  */
  running = !err && proc->sc == 0;

  FUNC1 (proc, "is %s", err ? "dead" : running ? "running" : "suspended");
  if (err)
    FUNC1 (proc, "err = %s", FUNC4 (err));

  if (running)
    {
      proc->aborted = 0;
      proc->state_valid = proc->state_changed = 0;
      proc->fetched_regs = 0;
    }

  return running;
}