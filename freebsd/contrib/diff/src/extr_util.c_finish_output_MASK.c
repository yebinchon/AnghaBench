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
 int /*<<< orphan*/  EXIT_TROUBLE ; 
 int INT_MAX ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ outfile ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  pr_pid ; 
 int /*<<< orphan*/  pr_program ; 
 scalar_t__ stdout ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

void
FUNC10 (void)
{
  if (outfile != 0 && outfile != stdout)
    {
      int status;
      int wstatus;
      int werrno = 0;
      if (FUNC6 (outfile))
	FUNC4 ("write failed");
#if ! (HAVE_WORKING_FORK || HAVE_WORKING_VFORK)
      wstatus = FUNC7 (outfile);
      if (wstatus == -1)
	werrno = errno;
#else
      if (fclose (outfile) != 0)
	pfatal_with_name (_("write failed"));
      if (waitpid (pr_pid, &wstatus, 0) < 0)
	pfatal_with_name ("waitpid");
#endif
      status = (! werrno && FUNC1 (wstatus)
		? FUNC0 (wstatus)
		: INT_MAX);
      if (status)
	FUNC3 (EXIT_TROUBLE, werrno,
	       FUNC2(status == 126
		 ? "subsidiary program `%s' could not be invoked"
		 : status == 127
		 ? "subsidiary program `%s' not found"
		 : status == INT_MAX
		 ? "subsidiary program `%s' failed"
		 : "subsidiary program `%s' failed (exit status %d)"),
	       pr_program, status);
    }

  outfile = 0;
}