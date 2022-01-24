#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_3__ {int tid; } ;
typedef  TYPE_1__ procfs_status ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCMD_PROC_TIDSTATUS ; 
 scalar_t__ EOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ctl_fd ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 (void)
{
  procfs_status status;
  pid_t pid;
  ptid_t ptid;

  if (ctl_fd == -1)
    return;

  pid = FUNC4 (inferior_ptid);

  for (status.tid = 1;; ++status.tid)
    {
      if (FUNC1 (ctl_fd, DCMD_PROC_TIDSTATUS, &status, sizeof (status), 0)
	  != EOK && status.tid != 0)
	break;
      ptid = FUNC3 (pid, 0, status.tid);
      if (!FUNC2 (ptid))
	FUNC0 (ptid);
    }
  return;
}