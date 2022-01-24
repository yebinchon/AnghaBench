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
struct TYPE_8__ {scalar_t__ ctl_fd; int status_valid; int /*<<< orphan*/  prstatus; } ;
typedef  TYPE_1__ procinfo ;
typedef  int /*<<< orphan*/  procfs_ctl_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CTL ; 
 int /*<<< orphan*/  PCSTOP ; 
 int /*<<< orphan*/  PIOCSTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (scalar_t__,char*,int) ; 

int
FUNC8 (procinfo *pi)
{
  int win;

  /*
   * We might conceivably apply this operation to an LWP, and
   * the LWP's ctl file descriptor might not be open.
   */

  if (pi->ctl_fd == 0 &&
      FUNC2 (pi, FD_CTL) == 0)
    return 0;
  else
    {
#ifdef NEW_PROC_API
      procfs_ctl_t cmd = PCSTOP;
      win = (write (pi->ctl_fd, (char *) &cmd, sizeof (cmd)) == sizeof (cmd));
#else	/* ioctl method */
      win = (FUNC1 (pi->ctl_fd, PIOCSTOP, &pi->prstatus) >= 0);
      /* Note: the call also reads the prstatus.  */
      if (win)
	{
	  pi->status_valid = 1;
	  FUNC0 (FUNC3 (pi),
				    FUNC6 (pi),
				    FUNC5 (pi),
				    FUNC4 (pi));
	}
#endif
    }

  return win;
}