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
struct lwp_info {int /*<<< orphan*/  ptid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_KILL ; 
 scalar_t__ debug_lin_lwp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (struct lwp_info *lp, void *data)
{
  errno = 0;
  FUNC2 (PTRACE_KILL, FUNC0 (lp->ptid), 0, 0);
  if (debug_lin_lwp)
    FUNC1 (gdb_stdlog,
			"KC:  PTRACE_KILL %s, 0, 0 (%s)\n",
			FUNC4 (lp->ptid),
			errno ? FUNC3 (errno) : "OK");

  return 0;
}