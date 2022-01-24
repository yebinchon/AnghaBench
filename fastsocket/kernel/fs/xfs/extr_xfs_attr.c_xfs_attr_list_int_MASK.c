#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ di_aformat; } ;
struct TYPE_13__ {TYPE_1__ i_d; int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;
struct TYPE_14__ {TYPE_2__* dp; } ;
typedef  TYPE_3__ xfs_attr_list_context_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ILOCK_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_attr_list ; 

int
FUNC9(xfs_attr_list_context_t *context)
{
	int error;
	xfs_inode_t *dp = context->dp;

	FUNC1(xs_attr_list);

	if (FUNC0(dp->i_mount))
		return EIO;

	FUNC6(dp, XFS_ILOCK_SHARED);

	/*
	 * Decide on what work routines to call based on the inode size.
	 */
	if (!FUNC7(dp)) {
		error = 0;
	} else if (dp->i_d.di_aformat == XFS_DINODE_FMT_LOCAL) {
		error = FUNC4(context);
	} else if (FUNC5(dp, XFS_ATTR_FORK)) {
		error = FUNC2(context);
	} else {
		error = FUNC3(context);
	}

	FUNC8(dp, XFS_ILOCK_SHARED);

	return error;
}