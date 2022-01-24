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
struct lwp_info {int status; scalar_t__ stopped; int /*<<< orphan*/  ptid; int /*<<< orphan*/ * next; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ debug_lin_lwp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct lwp_info* lwp_list ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct lwp_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10 (struct lwp_info *lp, void *data)
{
  sigset_t *flush_mask = data;
  sigset_t pending, intersection, blocked, ignored;
  int pid, status;

  /* Normally, when an LWP exits, it is removed from the LWP list.  The
     last LWP isn't removed till later, however.  So if there is only
     one LWP on the list, make sure it's alive.  */
  if (lwp_list == lp && lp->next == NULL)
    if (!FUNC5 (lp->ptid))
      return 0;

  /* Just because the LWP is stopped doesn't mean that new signals
     can't arrive from outside, so this function must be careful of
     race conditions.  However, because all threads are stopped, we
     can assume that the pending mask will not shrink unless we resume
     the LWP, and that it will then get another signal.  We can't
     control which one, however.  */

  if (lp->status)
    {
      if (debug_lin_lwp)
	FUNC6 ("FC: LP has pending status %06x\n", lp->status);
      if (FUNC1 (lp->status) && FUNC8 (flush_mask, FUNC2 (lp->status)))
	lp->status = 0;
    }

  while (FUNC4 (FUNC0 (lp->ptid), &pending, flush_mask))
    {
      int ret;
      
      errno = 0;
      ret = FUNC7 (PTRACE_CONT, FUNC0 (lp->ptid), 0, 0);
      if (debug_lin_lwp)
	FUNC3 (gdb_stderr,
			    "FC: Sent PTRACE_CONT, ret %d %d\n", ret, errno);

      lp->stopped = 0;
      FUNC9 (lp, flush_mask);
      if (debug_lin_lwp)
	FUNC3 (gdb_stderr,
			    "FC: Wait finished; saved status is %d\n",
			    lp->status);
    }

  return 0;
}