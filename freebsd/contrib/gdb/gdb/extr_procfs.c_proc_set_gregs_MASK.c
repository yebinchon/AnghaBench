#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ctl_fd; scalar_t__ gregs_valid; } ;
typedef  TYPE_1__ procinfo ;
typedef  int /*<<< orphan*/  procfs_ctl_t ;
typedef  int /*<<< orphan*/  gdb_gregset_t ;
typedef  int /*<<< orphan*/  arg ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CTL ; 
 int /*<<< orphan*/  PCSREG ; 
 int /*<<< orphan*/  PIOCSREG ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int FUNC4 (scalar_t__,void*,int) ; 

int
FUNC5 (procinfo *pi)
{
  gdb_gregset_t *gregs;
  int win;

  if ((gregs = FUNC3 (pi)) == NULL)
    return 0;	/* get_regs has already warned */

  if (pi->ctl_fd == 0 &&
      FUNC2 (pi, FD_CTL) == 0)
    {
      return 0;
    }
  else
    {
#ifdef NEW_PROC_API
      struct {
	procfs_ctl_t cmd;
	/* Use char array to avoid alignment issues.  */
	char gregs[sizeof (gdb_gregset_t)];
      } arg;

      arg.cmd   = PCSREG;
      memcpy (&arg.gregs, gregs, sizeof (arg.gregs));
      win = (write (pi->ctl_fd, (void *) &arg, sizeof (arg)) == sizeof (arg));
#else
      win = (FUNC0 (pi->ctl_fd, PIOCSREG, gregs) >= 0);
#endif
    }

  /* Policy: writing the regs invalidates our cache. */
  pi->gregs_valid = 0;
  return win;
}