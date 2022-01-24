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

/* Variables and functions */
 int /*<<< orphan*/  NO_STOP_QUIETLY ; 
 scalar_t__ STARTUP_WITH_SHELL ; 
 int /*<<< orphan*/  STOP_QUIETLY ; 
 scalar_t__ TARGET_SIGNAL_0 ; 
 scalar_t__ TARGET_SIGNAL_TRAP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ inferior_ignoring_leading_exec_events ; 
 int inferior_ignoring_startup_exec_events ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ stop_signal ; 
 int /*<<< orphan*/  stop_soon ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7 (int ntraps)
{
  int pending_execs = ntraps;
  int terminal_initted;

  /* The process was started by the fork that created it,
     but it will have stopped one instruction after execing the shell.
     Here we must get it up to actual execution of the real program.  */

  FUNC0 ();

  FUNC1 ();

  terminal_initted = 0;

  if (STARTUP_WITH_SHELL)
    inferior_ignoring_startup_exec_events = ntraps;
  else
    inferior_ignoring_startup_exec_events = 0;
  inferior_ignoring_leading_exec_events =
    FUNC3 () - 1;

  while (1)
    {
      /* Make wait_for_inferior be quiet */
      stop_soon = STOP_QUIETLY;
      FUNC6 ();
      if (stop_signal != TARGET_SIGNAL_TRAP)
	{
	  /* Let shell child handle its own signals in its own way */
	  /* FIXME, what if child has exit()ed?  Must exit loop somehow */
	  FUNC2 (0, stop_signal);
	}
      else
	{
	  /* We handle SIGTRAP, however; it means child did an exec.  */
	  if (!terminal_initted)
	    {
	      /* Now that the child has exec'd we know it has already set its
	         process group.  On POSIX systems, tcsetpgrp will fail with
	         EPERM if we try it before the child's setpgid.  */

	      /* Set up the "saved terminal modes" of the inferior
	         based on what modes we are starting it with.  */
	      FUNC5 ();

	      /* Install inferior's terminal modes.  */
	      FUNC4 ();

	      terminal_initted = 1;
	    }

	  pending_execs = pending_execs - 1;
	  if (0 == pending_execs)
	    break;

	  FUNC2 (0, TARGET_SIGNAL_0);	/* Just make it go on */
	}
    }
  stop_soon = NO_STOP_QUIETLY;
}