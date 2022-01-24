#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_8__ {scalar_t__ m_dirblksize; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_7__ {scalar_t__ di_size; } ;
struct TYPE_9__ {TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_fileoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(
	xfs_trans_t	*tp,
	xfs_inode_t	*dp,
	int		*vp)		/* out: 1 is block, 0 is not block */
{
	xfs_fileoff_t	last;		/* last file offset */
	xfs_mount_t	*mp;
	int		rval;

	mp = dp->i_mount;
	if ((rval = FUNC2(tp, dp, &last, XFS_DATA_FORK)))
		return rval;
	rval = FUNC1(mp, last) == mp->m_dirblksize;
	FUNC0(rval == 0 || dp->i_d.di_size == mp->m_dirblksize);
	*vp = rval;
	return 0;
}