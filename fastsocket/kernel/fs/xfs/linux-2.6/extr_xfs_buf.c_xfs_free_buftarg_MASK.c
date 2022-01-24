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
struct xfs_mount {int m_flags; } ;
struct xfs_buftarg {int /*<<< orphan*/  bt_task; int /*<<< orphan*/  bt_shrinker; } ;

/* Variables and functions */
 int XFS_MOUNT_BARRIER ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_buftarg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buftarg*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buftarg*,int) ; 

void
FUNC5(
	struct xfs_mount	*mp,
	struct xfs_buftarg	*btp)
{
	FUNC2(&btp->bt_shrinker);

	FUNC4(btp, 1);
	if (mp->m_flags & XFS_MOUNT_BARRIER)
		FUNC3(btp);

	FUNC1(btp->bt_task);
	FUNC0(btp);
}