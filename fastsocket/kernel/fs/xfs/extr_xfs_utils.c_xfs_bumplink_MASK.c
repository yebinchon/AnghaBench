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
struct TYPE_8__ {scalar_t__ di_nlink; int di_version; } ;
struct TYPE_9__ {TYPE_1__ i_d; } ;
typedef  TYPE_2__ xfs_inode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EMLINK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ICHGTIME_CHG ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 scalar_t__ XFS_MAXLINK ; 
 scalar_t__ XFS_MAXLINK_1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

int
FUNC7(
	xfs_trans_t *tp,
	xfs_inode_t *ip)
{
	if (ip->i_d.di_nlink >= XFS_MAXLINK)
		return FUNC2(EMLINK);
	FUNC5(tp, ip, XFS_ICHGTIME_CHG);

	FUNC0(ip->i_d.di_nlink > 0);
	ip->i_d.di_nlink++;
	FUNC3(FUNC1(ip));
	if ((ip->i_d.di_version == 1) &&
	    (ip->i_d.di_nlink > XFS_MAXLINK_1)) {
		/*
		 * The inode has increased its number of links beyond
		 * what can fit in an old format inode.  It now needs
		 * to be converted to a version 2 inode with a 32 bit
		 * link count.  If this is the first inode in the file
		 * system to do this, then we need to bump the superblock
		 * version number as well.
		 */
		FUNC4(tp, ip);
	}

	FUNC6(tp, ip, XFS_ILOG_CORE);
	return 0;
}