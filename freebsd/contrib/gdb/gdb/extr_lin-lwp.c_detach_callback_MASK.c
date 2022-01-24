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
struct lwp_info {scalar_t__ status; int /*<<< orphan*/  ptid; scalar_t__ signalled; scalar_t__ stopped; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  PTRACE_DETACH ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ debug_lin_lwp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13 (struct lwp_info *lp, void *data)
{
  FUNC7 (lp->status == 0 || FUNC2 (lp->status));

  if (debug_lin_lwp && lp->status)
    FUNC6 (gdb_stdlog, "DC:  Pending %s for %s on detach.\n",
			FUNC11 (FUNC3 (lp->status)),
			FUNC12 (lp->ptid));

  while (lp->signalled && lp->stopped)
    {
      errno = 0;
      if (FUNC8 (PTRACE_CONT, FUNC0 (lp->ptid), 0,
		  FUNC3 (lp->status)) < 0)
	FUNC5 ("Can't continue %s: %s", FUNC12 (lp->ptid),
	       FUNC9 (errno));

      if (debug_lin_lwp)
	FUNC6 (gdb_stdlog,
			    "DC:  PTRACE_CONTINUE (%s, 0, %s) (OK)\n",
			    FUNC12 (lp->ptid),
			    FUNC10 (lp->status));

      lp->stopped = 0;
      lp->signalled = 0;
      lp->status = 0;
      /* FIXME drow/2003-08-26: There was a call to stop_wait_callback
	 here.  But since lp->signalled was cleared above,
	 stop_wait_callback didn't do anything; the process was left
	 running.  Shouldn't we be waiting for it to stop?
	 I've removed the call, since stop_wait_callback now does do
	 something when called with lp->signalled == 0.  */

      FUNC7 (lp->status == 0 || FUNC2 (lp->status));
    }

  /* We don't actually detach from the LWP that has an id equal to the
     overall process id just yet.  */
  if (FUNC0 (lp->ptid) != FUNC1 (lp->ptid))
    {
      errno = 0;
      if (FUNC8 (PTRACE_DETACH, FUNC0 (lp->ptid), 0,
		  FUNC3 (lp->status)) < 0)
	FUNC5 ("Can't detach %s: %s", FUNC12 (lp->ptid),
	       FUNC9 (errno));

      if (debug_lin_lwp)
	FUNC6 (gdb_stdlog,
			    "PTRACE_DETACH (%s, %s, 0) (OK)\n",
			    FUNC12 (lp->ptid),
			    FUNC11 (FUNC3 (lp->status)));

      FUNC4 (lp->ptid);
    }

  return 0;
}