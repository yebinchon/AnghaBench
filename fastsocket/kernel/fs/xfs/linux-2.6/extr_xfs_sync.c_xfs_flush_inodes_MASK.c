#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  XFS_LOG_SYNC ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_flush_inodes_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(
	xfs_inode_t	*ip)
{
	struct inode	*inode = FUNC1(ip);
	FUNC0(completion);

	FUNC2(inode);
	FUNC5(ip->i_mount, inode, xfs_flush_inodes_work, &completion);
	FUNC3(&completion);
	FUNC4(ip->i_mount, XFS_LOG_SYNC);
}