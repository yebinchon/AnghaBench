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
struct lwp_info {int step; int resumed; scalar_t__ stopped; scalar_t__ status; int /*<<< orphan*/  ptid; } ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ debug_lin_lwp ; 
 struct lwp_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resume_callback ; 
 int /*<<< orphan*/  resume_clear_callback ; 
 int /*<<< orphan*/  resume_set_callback ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (ptid_t ptid, int step, enum target_signal signo)
{
  struct lwp_info *lp;
  int resume_all;

  /* A specific PTID means `step only this process id'.  */
  resume_all = (FUNC1 (ptid) == -1);

  if (resume_all)
    FUNC6 (resume_set_callback, NULL);
  else
    FUNC6 (resume_clear_callback, NULL);

  /* If PID is -1, it's the current inferior that should be
     handled specially.  */
  if (FUNC1 (ptid) == -1)
    ptid = inferior_ptid;

  lp = FUNC3 (ptid);
  if (lp)
    {
      ptid = FUNC7 (FUNC0 (lp->ptid));

      /* Remember if we're stepping.  */
      lp->step = step;

      /* Mark this LWP as resumed.  */
      lp->resumed = 1;

      /* If we have a pending wait status for this thread, there is no
         point in resuming the process.  */
      if (lp->status)
	{
	  /* FIXME: What should we do if we are supposed to continue
	     this thread with a signal?  */
	  FUNC5 (signo == TARGET_SIGNAL_0);
	  return;
	}

      /* Mark LWP as not stopped to prevent it from being continued by
         resume_callback.  */
      lp->stopped = 0;
    }

  if (resume_all)
    FUNC6 (resume_callback, NULL);

  FUNC2 (ptid, step, signo);
  if (debug_lin_lwp)
    FUNC4 (gdb_stdlog,
			"LLR: %s %s, %s (resume event thread)\n",
			step ? "PTRACE_SINGLESTEP" : "PTRACE_CONT",
			FUNC9 (ptid),
			signo ? FUNC8 (signo) : "0");
}