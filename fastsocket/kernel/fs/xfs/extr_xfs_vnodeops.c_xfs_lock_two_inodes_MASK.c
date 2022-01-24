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
struct TYPE_8__ {int li_flags; } ;
typedef  TYPE_1__ xfs_log_item_t ;
struct TYPE_9__ {scalar_t__ i_ino; scalar_t__ i_itemp; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int XFS_IOLOCK_EXCL ; 
 int XFS_IOLOCK_SHARED ; 
 int XFS_LI_IN_AIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void
FUNC6(
	xfs_inode_t		*ip0,
	xfs_inode_t		*ip1,
	uint			lock_mode)
{
	xfs_inode_t		*temp;
	int			attempts = 0;
	xfs_log_item_t		*lp;

	if (lock_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL))
		FUNC0((lock_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)) == 0);
	FUNC0(ip0->i_ino != ip1->i_ino);

	if (ip0->i_ino > ip1->i_ino) {
		temp = ip0;
		ip0 = ip1;
		ip1 = temp;
	}

 again:
	FUNC2(ip0, FUNC5(lock_mode, 0));

	/*
	 * If the first lock we have locked is in the AIL, we must TRY to get
	 * the second lock. If we can't get it, we must release the first one
	 * and try again.
	 */
	lp = (xfs_log_item_t *)ip0->i_itemp;
	if (lp && (lp->li_flags & XFS_LI_IN_AIL)) {
		if (!FUNC3(ip1, FUNC5(lock_mode, 1))) {
			FUNC4(ip0, lock_mode);
			if ((++attempts % 5) == 0)
				FUNC1(1); /* Don't just spin the CPU */
			goto again;
		}
	} else {
		FUNC2(ip1, FUNC5(lock_mode, 1));
	}
}