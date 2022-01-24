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
struct lwp_info {int /*<<< orphan*/  ptid; scalar_t__ cloned; } ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ ECHILD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __WCLONE ; 
 scalar_t__ debug_lin_lwp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (struct lwp_info *lp, void *data)
{
  pid_t pid;

  /* We must make sure that there are no pending events (delayed
     SIGSTOPs, pending SIGTRAPs, etc.) to make sure the current
     program doesn't interfere with any following debugging session.  */

  /* For cloned processes we must check both with __WCLONE and
     without, since the exit status of a cloned process isn't reported
     with __WCLONE.  */
  if (lp->cloned)
    {
      do
	{
	  pid = FUNC4 (FUNC0 (lp->ptid), NULL, __WCLONE);
	  if (pid != (pid_t) -1 && debug_lin_lwp)
	    {
	      FUNC1 (gdb_stdlog,
				  "KWC: wait %s received unknown.\n",
				  FUNC3 (lp->ptid));
	    }
	}
      while (pid == FUNC0 (lp->ptid));

      FUNC2 (pid == -1 && errno == ECHILD);
    }

  do
    {
      pid = FUNC4 (FUNC0 (lp->ptid), NULL, 0);
      if (pid != (pid_t) -1 && debug_lin_lwp)
	{
	  FUNC1 (gdb_stdlog,
			      "KWC: wait %s received unk.\n",
			      FUNC3 (lp->ptid));
	}
    }
  while (pid == FUNC0 (lp->ptid));

  FUNC2 (pid == -1 && errno == ECHILD);
  return 0;
}