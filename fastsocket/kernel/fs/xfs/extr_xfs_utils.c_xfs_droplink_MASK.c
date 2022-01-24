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
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_8__ {scalar_t__ di_nlink; } ;
struct TYPE_9__ {TYPE_1__ i_d; } ;
typedef  TYPE_2__ xfs_inode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  XFS_ICHGTIME_CHG ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

int				/* error */
FUNC6(
	xfs_trans_t *tp,
	xfs_inode_t *ip)
{
	int	error;

	FUNC4(tp, ip, XFS_ICHGTIME_CHG);

	FUNC0 (ip->i_d.di_nlink > 0);
	ip->i_d.di_nlink--;
	FUNC2(FUNC1(ip));
	FUNC5(tp, ip, XFS_ILOG_CORE);

	error = 0;
	if (ip->i_d.di_nlink == 0) {
		/*
		 * We're dropping the last link to this file.
		 * Move the on-disk inode to the AGI unlinked list.
		 * From xfs_inactive() we will pull the inode from
		 * the list and free it.
		 */
		error = FUNC3(tp, ip);
	}
	return error;
}