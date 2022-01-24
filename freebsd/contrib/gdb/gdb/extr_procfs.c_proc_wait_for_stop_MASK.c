#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ tid; int status_valid; int /*<<< orphan*/  prstatus; int /*<<< orphan*/  ctl_fd; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ procinfo ;
typedef  int /*<<< orphan*/  procfs_ctl_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  PCWSTOP ; 
 int /*<<< orphan*/  PIOCWSTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC8 (procinfo *pi)
{
  int win;

  /*
   * We should never have to apply this operation to any procinfo
   * except the one for the main process.  If that ever changes
   * for any reason, then take out the following clause and
   * replace it with one that makes sure the ctl_fd is open.
   */

  if (pi->tid != 0)
    pi = FUNC1 (pi->pid, 0);

#ifdef NEW_PROC_API
  {
    procfs_ctl_t cmd = PCWSTOP;
    win = (write (pi->ctl_fd, (char *) &cmd, sizeof (cmd)) == sizeof (cmd));
    /* We been runnin' and we stopped -- need to update status.  */
    pi->status_valid = 0;
  }
#else	/* ioctl method */
  win = (FUNC2 (pi->ctl_fd, PIOCWSTOP, &pi->prstatus) >= 0);
  /* Above call also refreshes the prstatus.  */
  if (win)
    {
      pi->status_valid = 1;
      FUNC0 (FUNC3 (pi),
				FUNC6 (pi),
				FUNC5 (pi),
				FUNC4 (pi));
    }
#endif

  return win;
}