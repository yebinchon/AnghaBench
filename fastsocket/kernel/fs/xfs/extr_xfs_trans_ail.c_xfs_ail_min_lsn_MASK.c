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
typedef  scalar_t__ xfs_lsn_t ;
struct TYPE_3__ {scalar_t__ li_lsn; } ;
typedef  TYPE_1__ xfs_log_item_t ;
struct xfs_ail {int /*<<< orphan*/  xa_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct xfs_ail*) ; 

xfs_lsn_t
FUNC3(
	struct xfs_ail	*ailp)
{
	xfs_lsn_t	lsn;
	xfs_log_item_t	*lip;

	FUNC0(&ailp->xa_lock);
	lip = FUNC2(ailp);
	if (lip == NULL) {
		lsn = (xfs_lsn_t)0;
	} else {
		lsn = lip->li_lsn;
	}
	FUNC1(&ailp->xa_lock);

	return lsn;
}