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
typedef  int /*<<< orphan*/  uint ;
struct xfs_inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*) ; 

int
FUNC4(
	struct xfs_inode	*ip,
	uint			flags)
{
	int			error;

	if (!FUNC3(ip))
		return 0;

	FUNC0(ip, XFS_ILOCK_EXCL);
	error = FUNC2(ip, flags);
	FUNC1(ip, XFS_ILOCK_EXCL);

	return error;
}