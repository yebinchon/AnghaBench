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
struct xfs_buf {int /*<<< orphan*/  b_iodone; TYPE_1__* b_target; } ;
struct TYPE_2__ {int /*<<< orphan*/  bt_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_buf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xfs_buf*) ; 
 int FUNC4 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*) ; 

int
FUNC6(
	struct xfs_buf	*bp)
{
	if (FUNC1(bp->b_target->bt_mount)) {
		FUNC2(bp, _RET_IP_);
		/*
		 * Metadata write that didn't get logged but
		 * written delayed anyway. These aren't associated
		 * with a transaction, and can be ignored.
		 */
		if (!bp->b_iodone && !FUNC0(bp))
			return FUNC4(bp);
		else
			return FUNC3(bp);
	}

	FUNC5(bp);
	return 0;
}