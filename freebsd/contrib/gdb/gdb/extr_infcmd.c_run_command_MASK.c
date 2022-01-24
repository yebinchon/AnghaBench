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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ event_loop_p ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  inferior_environ ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (char**) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

__attribute__((used)) static void
FUNC26 (char *args, int from_tty)
{
  char *exec_file;

  FUNC4 ();

  if (! FUNC11 (inferior_ptid, null_ptid) && target_has_execution)
    {
      if (from_tty
	  && !FUNC12 ("The program being debugged has been started already.\n\
Start it from the beginning? "))
	FUNC6 ("Program not restarted.");
      FUNC19 ();
#if defined(SOLIB_RESTART)
      SOLIB_RESTART ();
#endif
      FUNC9 ();
    }

  FUNC2 ();

  /* Purge old solib objfiles. */
  FUNC10 ();

  FUNC3 (NULL);

  /* The comment here used to read, "The exec file is re-read every
     time we do a generic_mourn_inferior, so we just have to worry
     about the symbol file."  The `generic_mourn_inferior' function
     gets called whenever the program exits.  However, suppose the
     program exits, and *then* the executable file changes?  We need
     to check again here.  Since reopen_exec_file doesn't do anything
     if the timestamp hasn't changed, I don't see the harm.  */
  FUNC13 ();
  FUNC14 ();

  exec_file = (char *) FUNC7 (0);

  /* We keep symbols from add-symbol-file, on the grounds that the
     user might want to add some symbols before running the program
     (right?).  But sometimes (dynamic loading where the user manually
     introduces the new symbols with add-symbol-file), the code which
     the symbols describe does not persist between runs.  Currently
     the user has to manually nuke all symbols between runs if they
     want them to go away (PR 2207).  This is probably reasonable.  */

  if (!args)
    {
      if (event_loop_p && FUNC17 ())
	FUNC1 ();
    }
  else
    {
      int async_exec = FUNC16 (&args);

      /* If we get a request for running in the bg but the target
         doesn't support it, error out. */
      if (event_loop_p && async_exec && !FUNC17 ())
	FUNC6 ("Asynchronous execution not supported on this target.");

      /* If we don't get a request of running in the bg, then we need
         to simulate synchronous (fg) execution. */
      if (event_loop_p && !async_exec && FUNC17 ())
	{
	  /* Simulate synchronous execution */
	  FUNC1 ();
	}

      /* If there were other args, beside '&', process them. */
      if (args)
	{
          char *old_args = FUNC15 (FUNC25 (args));
          FUNC24 (old_args);
	}
    }

  if (from_tty)
    {
      FUNC20 (uiout, NULL, "Starting program");
      FUNC23 (uiout, ": ");
      if (exec_file)
	FUNC20 (uiout, "execfile", exec_file);
      FUNC22 (uiout, 1);
      /* We call get_inferior_args() because we might need to compute
	 the value now.  */
      FUNC20 (uiout, "infargs", FUNC8 ());
      FUNC23 (uiout, "\n");
      FUNC21 (uiout);
    }

  /* We call get_inferior_args() because we might need to compute
     the value now.  */
  FUNC18 (exec_file, FUNC8 (),
			  FUNC5 (inferior_environ));
}