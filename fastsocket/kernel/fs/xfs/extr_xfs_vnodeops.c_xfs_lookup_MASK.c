#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_ino_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_name {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct xfs_name*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,struct xfs_name*,int /*<<< orphan*/ *,struct xfs_name*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC8(
	xfs_inode_t		*dp,
	struct xfs_name		*name,
	xfs_inode_t		**ipp,
	struct xfs_name		*ci_name)
{
	xfs_ino_t		inum;
	int			error;
	uint			lock_mode;

	FUNC3(dp, name);

	if (FUNC1(dp->i_mount))
		return FUNC0(EIO);

	lock_mode = FUNC6(dp);
	error = FUNC4(NULL, dp, name, &inum, ci_name);
	FUNC7(dp, lock_mode);

	if (error)
		goto out;

	error = FUNC5(dp->i_mount, NULL, inum, 0, 0, ipp);
	if (error)
		goto out_free_name;

	return 0;

out_free_name:
	if (ci_name)
		FUNC2(ci_name->name);
out:
	*ipp = NULL;
	return error;
}