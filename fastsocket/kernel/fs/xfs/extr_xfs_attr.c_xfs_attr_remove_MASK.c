#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct xfs_name {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ENOATTR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ILOCK_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xfs_name*,unsigned char const*) ; 
 int FUNC4 (TYPE_1__*,struct xfs_name*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_attr_remove ; 

int
FUNC8(
	xfs_inode_t	*dp,
	const unsigned char *name,
	int		flags)
{
	int		error;
	struct xfs_name	xname;

	FUNC2(xs_attr_remove);

	if (FUNC1(dp->i_mount))
		return (EIO);

	error = FUNC3(&xname, name);
	if (error)
		return error;

	FUNC5(dp, XFS_ILOCK_SHARED);
	if (!FUNC6(dp)) {
		FUNC7(dp, XFS_ILOCK_SHARED);
		return FUNC0(ENOATTR);
	}
	FUNC7(dp, XFS_ILOCK_SHARED);

	return FUNC4(dp, &xname, flags);
}