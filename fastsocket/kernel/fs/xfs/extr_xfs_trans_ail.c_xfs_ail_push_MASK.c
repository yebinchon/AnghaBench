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
typedef  int /*<<< orphan*/  xfs_lsn_t ;
typedef  int /*<<< orphan*/  xfs_log_item_t ;
struct xfs_ail {int /*<<< orphan*/  xa_target; int /*<<< orphan*/  xa_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xfs_ail*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_ail*,int /*<<< orphan*/ ) ; 

void
FUNC4(
	struct xfs_ail	*ailp,
	xfs_lsn_t	threshold_lsn)
{
	xfs_log_item_t	*lip;

	lip = FUNC2(ailp);
	if (lip && !FUNC0(ailp->xa_mount)) {
		if (FUNC1(threshold_lsn, ailp->xa_target) > 0)
			FUNC3(ailp, threshold_lsn);
	}
}