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
struct lwp_info {int cloned; int stopped; } ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ ECHILD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_ATTACH ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  __WCLONE ; 
 struct lwp_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blocked_mask ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ debug_lin_lwp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 struct lwp_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int,int*,int /*<<< orphan*/ ) ; 

void
FUNC20 (ptid_t ptid, int verbose)
{
  struct lwp_info *lp;

  FUNC9 (FUNC10 (ptid));

  /* Make sure SIGCHLD is blocked.  We don't want SIGCHLD events
     to interrupt either the ptrace() or waitpid() calls below.  */
  if (!FUNC15 (&blocked_mask, SIGCHLD))
    {
      FUNC14 (&blocked_mask, SIGCHLD);
      FUNC16 (SIG_BLOCK, &blocked_mask, NULL);
    }

  if (verbose)
    FUNC11 ("[New %s]\n", FUNC18 (ptid));

  lp = FUNC7 (ptid);
  if (lp == NULL)
    lp = FUNC4 (ptid);

  /* We assume that we're already attached to any LWP that has an
     id equal to the overall process id.  */
  if (FUNC0 (ptid) != FUNC1 (ptid))
    {
      pid_t pid;
      int status;

      if (FUNC12 (PTRACE_ATTACH, FUNC0 (ptid), 0, 0) < 0)
	FUNC6 ("Can't attach %s: %s", FUNC18 (ptid),
	       FUNC13 (errno));

      if (debug_lin_lwp)
	FUNC8 (gdb_stdlog,
			    "LLAL: PTRACE_ATTACH %s, 0, 0 (OK)\n",
			    FUNC18 (ptid));

      pid = FUNC19 (FUNC0 (ptid), &status, 0);
      if (pid == -1 && errno == ECHILD)
	{
	  /* Try again with __WCLONE to check cloned processes.  */
	  pid = FUNC19 (FUNC0 (ptid), &status, __WCLONE);
	  lp->cloned = 1;
	}

      FUNC9 (pid == FUNC0 (ptid)
		  && FUNC2 (status) && FUNC3 (status));

      FUNC5 (pid);

      lp->stopped = 1;

      if (debug_lin_lwp)
	{
	  FUNC8 (gdb_stdlog,
			      "LLAL: waitpid %s received %s\n",
			      FUNC18 (ptid),
			      FUNC17 (status));
	}
    }
  else
    {
      /* We assume that the LWP representing the original process
         is already stopped.  Mark it as stopped in the data structure
         that the lin-lwp layer uses to keep track of threads.  Note
         that this won't have already been done since the main thread
         will have, we assume, been stopped by an attach from a
         different layer.  */
      lp->stopped = 1;
    }
}