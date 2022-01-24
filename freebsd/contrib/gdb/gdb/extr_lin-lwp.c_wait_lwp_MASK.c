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
struct lwp_info {int /*<<< orphan*/  ptid; int /*<<< orphan*/  status; int /*<<< orphan*/  stopped; } ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ ECHILD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  __WCLONE ; 
 scalar_t__ debug_lin_lwp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14 (struct lwp_info *lp)
{
  pid_t pid;
  int status;
  int thread_dead = 0;

  FUNC7 (!lp->stopped);
  FUNC7 (lp->status == 0);

  pid = FUNC13 (FUNC0 (lp->ptid), &status, 0);
  if (pid == -1 && errno == ECHILD)
    {
      pid = FUNC13 (FUNC0 (lp->ptid), &status, __WCLONE);
      if (pid == -1 && errno == ECHILD)
	{
	  /* The thread has previously exited.  We need to delete it now
	     because in the case of NPTL threads, there won't be an
	     exit event unless it is the main thread.  */
	  thread_dead = 1;
	  if (debug_lin_lwp)
	    FUNC6 (gdb_stdlog, "WL: %s vanished.\n",
				FUNC12 (lp->ptid));
	}
    }

  if (!thread_dead)
    {
      FUNC7 (pid == FUNC0 (lp->ptid));

      if (debug_lin_lwp)
	{
	  FUNC6 (gdb_stdlog,
			      "WL: waitpid %s received %s\n",
			      FUNC12 (lp->ptid),
			      FUNC11 (status));
	}
    }

  /* Check if the thread has exited.  */
  if (FUNC1 (status) || FUNC2 (status))
    {
      thread_dead = 1;
      if (debug_lin_lwp)
	FUNC6 (gdb_stdlog, "WL: %s exited.\n",
			    FUNC12 (lp->ptid));
    }

  if (thread_dead)
    {
      if (FUNC8 (lp->ptid))
	{
	  /* Core GDB cannot deal with us deleting the current thread.  */
	  if (!FUNC10 (lp->ptid, inferior_ptid))
	    FUNC5 (lp->ptid);
	  FUNC9 ("[%s exited]\n",
			     FUNC12 (lp->ptid));
	}

      FUNC4 (lp->ptid);
      return 0;
    }

  FUNC7 (FUNC3 (status));

  return status;
}