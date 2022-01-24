#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfs_ail {int /*<<< orphan*/  xa_task; TYPE_1__* xa_mount; scalar_t__ xa_target; } ;
struct TYPE_2__ {int /*<<< orphan*/  m_fsname; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct xfs_ail*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfsaild ; 

int
FUNC3(
	struct xfs_ail	*ailp)
{
	ailp->xa_target = 0;
	ailp->xa_task = FUNC2(xfsaild, ailp, "xfsaild/%s",
				    ailp->xa_mount->m_fsname);
	if (FUNC0(ailp->xa_task))
		return -FUNC1(ailp->xa_task);
	return 0;
}