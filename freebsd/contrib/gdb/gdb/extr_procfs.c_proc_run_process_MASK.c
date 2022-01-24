#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int pr_flags; } ;
typedef  TYPE_1__ prrun_t ;
typedef  int /*<<< orphan*/  prrun ;
struct TYPE_9__ {scalar_t__ ctl_fd; } ;
typedef  TYPE_2__ procinfo ;
typedef  int procfs_ctl_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CTL ; 
 int PCRUN ; 
 int /*<<< orphan*/  PIOCRUN ; 
 int PRCFAULT ; 
 int PRCSIG ; 
 int PRSTEP ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (scalar_t__,char*,int) ; 

int
FUNC5 (procinfo *pi, int step, int signo)
{
  int win;
  int runflags;

  /*
   * We will probably have to apply this operation to individual threads,
   * so make sure the control file descriptor is open.
   */

  if (pi->ctl_fd == 0 &&
      FUNC2 (pi, FD_CTL) == 0)
    {
      return 0;
    }

  runflags    = PRCFAULT;	/* always clear current fault  */
  if (step)
    runflags |= PRSTEP;
  if (signo == 0)
    runflags |= PRCSIG;
  else if (signo != -1)		/* -1 means do nothing W.R.T. signals */
    FUNC3 (pi, signo);

#ifdef NEW_PROC_API
  {
    procfs_ctl_t cmd[2];

    cmd[0]  = PCRUN;
    cmd[1]  = runflags;
    win = (write (pi->ctl_fd, (char *) &cmd, sizeof (cmd)) == sizeof (cmd));
  }
#else	/* ioctl method */
  {
    prrun_t prrun;

    FUNC1 (&prrun, 0, sizeof (prrun));
    prrun.pr_flags  = runflags;
    win = (FUNC0 (pi->ctl_fd, PIOCRUN, &prrun) >= 0);
  }
#endif

  return win;
}