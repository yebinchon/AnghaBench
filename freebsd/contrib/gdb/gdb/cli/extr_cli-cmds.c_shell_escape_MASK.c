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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_directory ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 
 int FUNC9 (char*) ; 
 int FUNC10 () ; 
 int FUNC11 (int*) ; 

__attribute__((used)) static void
FUNC12 (char *arg, int from_tty)
{
#ifdef CANT_FORK
  /* If ARG is NULL, they want an inferior shell, but `system' just
     reports if the shell is available when passed a NULL arg.  */
  int rc = system (arg ? arg : "");

  if (!arg)
    arg = "inferior shell";

  if (rc == -1)
    {
      fprintf_unfiltered (gdb_stderr, "Cannot execute %s: %s\n", arg,
			  safe_strerror (errno));
      gdb_flush (gdb_stderr);
    }
  else if (rc)
    {
      fprintf_unfiltered (gdb_stderr, "%s exited with status %d\n", arg, rc);
      gdb_flush (gdb_stderr);
    }
#ifdef GLOBAL_CURDIR
  /* Make sure to return to the directory GDB thinks it is, in case the
     shell command we just ran changed it.  */
  chdir (current_directory);
#endif
#else /* Can fork.  */
  int rc, status, pid;

  if ((pid = FUNC10 ()) == 0)
    {
      char *p, *user_shell;

      if ((user_shell = (char *) FUNC6 ("SHELL")) == NULL)
	user_shell = "/bin/sh";

      /* Get the name of the shell for arg0 */
      if ((p = FUNC8 (user_shell, '/')) == NULL)
	p = user_shell;
      else
	p++;			/* Get past '/' */

      if (!arg)
	FUNC3 (user_shell, p, (char *) 0);
      else
	FUNC3 (user_shell, p, "-c", arg, (char *) 0);

      FUNC4 (gdb_stderr, "Cannot execute %s: %s\n", user_shell,
			  FUNC7 (errno));
      FUNC5 (gdb_stderr);
      FUNC0 (0177);
    }

  if (pid != -1)
    while ((rc = FUNC11 (&status)) != pid && rc != -1)
      ;
  else
    FUNC2 ("Fork failed");
#endif /* Can fork.  */
}