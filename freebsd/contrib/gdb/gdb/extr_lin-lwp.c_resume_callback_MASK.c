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
struct thread_info {int dummy; } ;
struct lwp_info {scalar_t__ status; scalar_t__ step; scalar_t__ stopped; int /*<<< orphan*/  ptid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ debug_lin_lwp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (struct lwp_info *lp, void *data)
{
  if (lp->stopped && lp->status == 0)
    {
      struct thread_info *tp;

      FUNC1 (FUNC3 (FUNC0 (lp->ptid)), 0, TARGET_SIGNAL_0);
      if (debug_lin_lwp)
	FUNC2 (gdb_stdlog,
			    "RC:  PTRACE_CONT %s, 0, 0 (resume sibling)\n",
			    FUNC4 (lp->ptid));
      lp->stopped = 0;
      lp->step = 0;
    }

  return 0;
}