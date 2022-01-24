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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STOP_QUIETLY_NO_SIGSTOP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  auto_solib_add ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char**) ; 
 int /*<<< orphan*/  stop_soon ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 

void
FUNC23 (char *args, int from_tty)
{
  char *exec_file;
  char *full_exec_path = NULL;

  FUNC4 ();		/* Not for the faint of heart */

  if (target_has_execution)
    {
      if (FUNC10 ("A program is being debugged already.  Kill it? "))
	FUNC17 ();
      else
	FUNC5 ("Not killed.");
    }

  FUNC16 (args, from_tty);

  /* Set up the "saved terminal modes" of the inferior
     based on what modes we are starting it with.  */
  FUNC21 ();

  /* Install inferior's terminal modes.  */
  FUNC20 ();

  /* Set up execution context to know that we should return from
     wait_for_inferior as soon as the target reports a stop.  */
  FUNC8 ();
  FUNC3 ();

  /* No traps are generated when attaching to inferior under Mach 3
     or GNU hurd.  */
#ifndef ATTACH_NO_WAIT
  /* Careful here. See comments in inferior.h.  Basically some OSes
     don't ignore SIGSTOPs on continue requests anymore.  We need a
     way for handle_inferior_event to reset the stop_signal variable
     after an attach, and this is what STOP_QUIETLY_NO_SIGSTOP is for.  */
  stop_soon = STOP_QUIETLY_NO_SIGSTOP;
  FUNC22 ();
  stop_soon = NO_STOP_QUIETLY;
#endif

  /*
   * If no exec file is yet known, try to determine it from the
   * process itself.
   */
  exec_file = (char *) FUNC7 (0);
  if (!exec_file)
    {
      exec_file = FUNC18 (FUNC0 (inferior_ptid));
      if (exec_file)
	{
	  /* It's possible we don't have a full path, but rather just a
	     filename.  Some targets, such as HP-UX, don't provide the
	     full path, sigh.

	     Attempt to qualify the filename against the source path.
	     (If that fails, we'll just fall back on the original
	     filename.  Not much more we can do...)
	   */
	  if (!FUNC13 (exec_file, &full_exec_path))
	    full_exec_path = FUNC12 (exec_file, FUNC14 (exec_file));

	  FUNC6 (full_exec_path, from_tty);
	  FUNC15 (full_exec_path, from_tty);
	}
    }

#ifdef SOLIB_ADD
  /* Add shared library symbols from the newly attached process, if any.  */
  SOLIB_ADD ((char *) 0, from_tty, &current_target, auto_solib_add);
  re_enable_breakpoints_in_shlibs ();
#endif

  /* Take any necessary post-attaching actions for this platform.
   */
  FUNC19 (FUNC0 (inferior_ptid));

  FUNC9 ();

  if (&attach_hook)
    FUNC2 ();
}