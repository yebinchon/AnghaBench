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
struct lwp_info {int signalled; scalar_t__ status; int /*<<< orphan*/  ptid; int /*<<< orphan*/  stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGSTOP ; 
 scalar_t__ debug_lin_lwp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (struct lwp_info *lp, void *data)
{
  if (!lp->stopped && !lp->signalled)
    {
      int ret;

      if (debug_lin_lwp)
	{
	  FUNC1 (gdb_stdlog,
			      "SC:  kill %s **<SIGSTOP>**\n",
			      FUNC5 (lp->ptid));
	}
      errno = 0;
      ret = FUNC3 (FUNC0 (lp->ptid), SIGSTOP);
      if (debug_lin_lwp)
	{
	  FUNC1 (gdb_stdlog,
			      "SC:  lwp kill %d %s\n",
			      ret,
			      errno ? FUNC4 (errno) : "ERRNO-OK");
	}

      lp->signalled = 1;
      FUNC2 (lp->status == 0);
    }

  return 0;
}