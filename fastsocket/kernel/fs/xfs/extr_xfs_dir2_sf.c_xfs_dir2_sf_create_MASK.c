#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int di_size; scalar_t__ di_format; } ;
struct TYPE_14__ {scalar_t__ if_data; } ;
struct TYPE_15__ {int if_flags; scalar_t__ if_bytes; TYPE_1__ if_u1; } ;
struct TYPE_18__ {TYPE_4__ i_d; TYPE_2__ i_df; } ;
typedef  TYPE_5__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_ino_t ;
struct TYPE_16__ {int i8count; scalar_t__ count; int /*<<< orphan*/  parent; } ;
struct TYPE_19__ {TYPE_3__ hdr; } ;
typedef  TYPE_6__ xfs_dir2_sf_t ;
struct TYPE_20__ {int /*<<< orphan*/  trans; TYPE_5__* dp; } ;
typedef  TYPE_7__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ XFS_DINODE_FMT_EXTENTS ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int /*<<< orphan*/  XFS_DIR2_MAX_SHORT_INUM ; 
 int XFS_IFEXTENTS ; 
 int XFS_IFINLINE ; 
 int XFS_ILOG_CORE ; 
 int XFS_ILOG_DDATA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 

int					/* error, always 0 */
FUNC7(
	xfs_da_args_t	*args,		/* operation arguments */
	xfs_ino_t	pino)		/* parent inode number */
{
	xfs_inode_t	*dp;		/* incore directory inode */
	int		i8count;	/* parent inode is an 8-byte number */
	xfs_dir2_sf_t	*sfp;		/* shortform structure */
	int		size;		/* directory size */

	FUNC1(args);

	dp = args->dp;

	FUNC0(dp != NULL);
	FUNC0(dp->i_d.di_size == 0);
	/*
	 * If it's currently a zero-length extent file,
	 * convert it to local format.
	 */
	if (dp->i_d.di_format == XFS_DINODE_FMT_EXTENTS) {
		dp->i_df.if_flags &= ~XFS_IFEXTENTS;	/* just in case */
		dp->i_d.di_format = XFS_DINODE_FMT_LOCAL;
		FUNC6(args->trans, dp, XFS_ILOG_CORE);
		dp->i_df.if_flags |= XFS_IFINLINE;
	}
	FUNC0(dp->i_df.if_flags & XFS_IFINLINE);
	FUNC0(dp->i_df.if_bytes == 0);
	i8count = pino > XFS_DIR2_MAX_SHORT_INUM;
	size = FUNC3(i8count);
	/*
	 * Make a buffer for the data.
	 */
	FUNC5(dp, size, XFS_DATA_FORK);
	/*
	 * Fill in the header,
	 */
	sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
	sfp->hdr.i8count = i8count;
	/*
	 * Now can put in the inode number, since i8count is set.
	 */
	FUNC4(sfp, &pino, &sfp->hdr.parent);
	sfp->hdr.count = 0;
	dp->i_d.di_size = size;
	FUNC2(args);
	FUNC6(args->trans, dp, XFS_ILOG_CORE | XFS_ILOG_DDATA);
	return 0;
}