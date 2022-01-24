#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  trace; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuinfo ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  nto_cpuinfo_flags ; 
 int nto_cpuinfo_valid ; 
 int /*<<< orphan*/  procfs_meminfo ; 
 int /*<<< orphan*/  procfs_ops ; 
 int /*<<< orphan*/  procfs_pidlist ; 
 TYPE_1__ run ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC8 (void)
{
  sigset_t set;

  FUNC3 ();
  FUNC2 (&procfs_ops);

  /* We use SIGUSR1 to gain control after we block waiting for a process.
     We use sigwaitevent to wait.  */
  FUNC6 (&set);
  FUNC5 (&set, SIGUSR1);
  FUNC7 (SIG_BLOCK, &set, NULL);

  /* Set up trace and fault sets, as gdb expects them.  */
  FUNC6 (&run.trace);
  FUNC4 ();

  /* Stuff some information.  */
  nto_cpuinfo_flags = FUNC0 (cpuinfo)->flags;
  nto_cpuinfo_valid = 1;

  FUNC1 ("pidlist", procfs_pidlist, "pidlist");
  FUNC1 ("meminfo", procfs_meminfo, "memory information");
}