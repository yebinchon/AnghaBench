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
struct lwp_info {int stopped; int status; scalar_t__ signalled; int /*<<< orphan*/  ptid; } ;
typedef  void sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 scalar_t__ SIGSTOP ; 
 scalar_t__ SIGTRAP ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ debug_lin_lwp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (void*,scalar_t__) ; 
 char* FUNC7 (int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct lwp_info*) ; 

__attribute__((used)) static int
FUNC10 (struct lwp_info *lp, void *data)
{
  sigset_t *flush_mask = data;

  if (!lp->stopped)
    {
      int status;

      status = FUNC9 (lp);
      if (status == 0)
	return 0;

      /* Ignore any signals in FLUSH_MASK.  */
      if (flush_mask && FUNC6 (flush_mask, FUNC1 (status)))
	{
	  if (!lp->signalled)
	    {
	      lp->stopped = 1;
	      return 0;
	    }

	  errno = 0;
	  FUNC4 (PTRACE_CONT, FUNC0 (lp->ptid), 0, 0);
	  if (debug_lin_lwp)
	    FUNC2 (gdb_stdlog,
				"PTRACE_CONT %s, 0, 0 (%s)\n",
				FUNC8 (lp->ptid),
				errno ? FUNC5 (errno) : "OK");

	  return FUNC10 (lp, flush_mask);
	}

      if (FUNC1 (status) != SIGSTOP)
	{
	  if (FUNC1 (status) == SIGTRAP)
	    {
	      /* If a LWP other than the LWP that we're reporting an
	         event for has hit a GDB breakpoint (as opposed to
	         some random trap signal), then just arrange for it to
	         hit it again later.  We don't keep the SIGTRAP status
	         and don't forward the SIGTRAP signal to the LWP.  We
	         will handle the current event, eventually we will
	         resume all LWPs, and this one will get its breakpoint
	         trap again.

	         If we do not do this, then we run the risk that the
	         user will delete or disable the breakpoint, but the
	         thread will have already tripped on it.  */

	      /* Now resume this LWP and get the SIGSTOP event. */
	      errno = 0;
	      FUNC4 (PTRACE_CONT, FUNC0 (lp->ptid), 0, 0);
	      if (debug_lin_lwp)
		{
		  FUNC2 (gdb_stdlog,
				      "PTRACE_CONT %s, 0, 0 (%s)\n",
				      FUNC8 (lp->ptid),
				      errno ? FUNC5 (errno) : "OK");

		  FUNC2 (gdb_stdlog,
				      "SWC: Candidate SIGTRAP event in %s\n",
				      FUNC8 (lp->ptid));
		}
	      /* Hold the SIGTRAP for handling by lin_lwp_wait. */
	      FUNC10 (lp, data);
	      /* If there's another event, throw it back into the queue. */
	      if (lp->status)
		{
		  if (debug_lin_lwp)
		    {
		      FUNC2 (gdb_stdlog,
					  "SWC: kill %s, %s\n",
					  FUNC8 (lp->ptid),
					  FUNC7 ((int) status));
		    }
		  FUNC3 (FUNC0 (lp->ptid), FUNC1 (lp->status));
		}
	      /* Save the sigtrap event. */
	      lp->status = status;
	      return 0;
	    }
	  else
	    {
	      /* The thread was stopped with a signal other than
	         SIGSTOP, and didn't accidentally trip a breakpoint. */

	      if (debug_lin_lwp)
		{
		  FUNC2 (gdb_stdlog,
				      "SWC: Pending event %s in %s\n",
				      FUNC7 ((int) status),
				      FUNC8 (lp->ptid));
		}
	      /* Now resume this LWP and get the SIGSTOP event. */
	      errno = 0;
	      FUNC4 (PTRACE_CONT, FUNC0 (lp->ptid), 0, 0);
	      if (debug_lin_lwp)
		FUNC2 (gdb_stdlog,
				    "SWC: PTRACE_CONT %s, 0, 0 (%s)\n",
				    FUNC8 (lp->ptid),
				    errno ? FUNC5 (errno) : "OK");

	      /* Hold this event/waitstatus while we check to see if
	         there are any more (we still want to get that SIGSTOP). */
	      FUNC10 (lp, data);
	      /* If the lp->status field is still empty, use it to hold
	         this event.  If not, then this event must be returned
	         to the event queue of the LWP.  */
	      if (lp->status == 0)
		lp->status = status;
	      else
		{
		  if (debug_lin_lwp)
		    {
		      FUNC2 (gdb_stdlog,
					  "SWC: kill %s, %s\n",
					  FUNC8 (lp->ptid),
					  FUNC7 ((int) status));
		    }
		  FUNC3 (FUNC0 (lp->ptid), FUNC1 (status));
		}
	      return 0;
	    }
	}
      else
	{
	  /* We caught the SIGSTOP that we intended to catch, so
	     there's no SIGSTOP pending.  */
	  lp->stopped = 1;
	  lp->signalled = 0;
	}
    }

  return 0;
}