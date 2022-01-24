#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tid; scalar_t__ status_valid; int /*<<< orphan*/  ctl_fd; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ procinfo ;
typedef  int /*<<< orphan*/  procfs_ctl_t ;
typedef  int /*<<< orphan*/  gdb_sigset_t ;
typedef  int /*<<< orphan*/  arg ;

/* Variables and functions */
 int /*<<< orphan*/  PCSTRACE ; 
 int /*<<< orphan*/  PIOCSTRACE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC5 (procinfo *pi, gdb_sigset_t *sigset)
{
  int win;

  /*
   * We should never have to apply this operation to any procinfo
   * except the one for the main process.  If that ever changes
   * for any reason, then take out the following clause and
   * replace it with one that makes sure the ctl_fd is open.
   */

  if (pi->tid != 0)
    pi = FUNC0 (pi->pid, 0);

#ifdef NEW_PROC_API
  {
    struct {
      procfs_ctl_t cmd;
      /* Use char array to avoid alignment issues.  */
      char sigset[sizeof (gdb_sigset_t)];
    } arg;

    arg.cmd = PCSTRACE;
    memcpy (&arg.sigset, sigset, sizeof (gdb_sigset_t));

    win = (write (pi->ctl_fd, (char *) &arg, sizeof (arg)) == sizeof (arg));
  }
#else	/* ioctl method */
  win = (FUNC1 (pi->ctl_fd, PIOCSTRACE, sigset) >= 0);
#endif
  /* The above operation renders the procinfo's cached pstatus obsolete. */
  pi->status_valid = 0;

  if (!win)
    FUNC3 ("procfs: set_traced_signals failed");
  return win;
}