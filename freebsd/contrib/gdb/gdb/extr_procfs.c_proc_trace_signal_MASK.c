#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tid; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ procinfo ;
typedef  int /*<<< orphan*/  gdb_sigset_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC4 (procinfo *pi, int signo)
{
  gdb_sigset_t temp;

  /*
   * We should never have to apply this operation to any procinfo
   * except the one for the main process.  If that ever changes
   * for any reason, then take out the following clause and
   * replace it with one that makes sure the ctl_fd is open.
   */

  if (pi->tid != 0)
    pi = FUNC0 (pi->pid, 0);

  if (pi)
    {
      if (FUNC2 (pi, &temp))
	{
	  FUNC1 (&temp, signo);
	  return FUNC3 (pi, &temp);
	}
    }

  return 0;	/* failure */
}