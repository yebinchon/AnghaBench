#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_13__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  scalar_t__ xfs_fileoff_t ;
struct TYPE_12__ {int /*<<< orphan*/  nused; int /*<<< orphan*/  magic; } ;
struct TYPE_14__ {TYPE_1__ hdr; } ;
typedef  TYPE_3__ xfs_dir2_free_t ;
struct TYPE_15__ {TYPE_3__* data; } ;
typedef  TYPE_4__ xfs_dabuf_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_16__ {int /*<<< orphan*/ * trans; TYPE_2__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ XFS_DIR2_FREE_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*) ; 

int						/* error */
FUNC7(
	xfs_da_args_t		*args,		/* operation arguments */
	xfs_fileoff_t		fo,		/* free block number */
	int			*rvalp)		/* out: did something */
{
	xfs_dabuf_t		*bp;		/* freespace buffer */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	xfs_dir2_free_t		*free;		/* freespace structure */
	xfs_mount_t		*mp;		/* filesystem mount point */
	xfs_trans_t		*tp;		/* transaction pointer */

	dp = args->dp;
	mp = dp->i_mount;
	tp = args->trans;
	/*
	 * Read the freespace block.
	 */
	if (FUNC2(error = FUNC4(tp, dp, (xfs_dablk_t)fo, -2, &bp,
			XFS_DATA_FORK))) {
		return error;
	}

	/*
	 * There can be holes in freespace.  If fo is a hole, there's
	 * nothing to do.
	 */
	if (bp == NULL) {
		return 0;
	}
	free = bp->data;
	FUNC0(FUNC1(free->hdr.magic) == XFS_DIR2_FREE_MAGIC);
	/*
	 * If there are used entries, there's nothing to do.
	 */
	if (FUNC1(free->hdr.nused) > 0) {
		FUNC3(tp, bp);
		*rvalp = 0;
		return 0;
	}
	/*
	 * Blow the block away.
	 */
	if ((error =
	    FUNC6(args, FUNC5(mp, (xfs_dablk_t)fo),
		    bp))) {
		/*
		 * Can't fail with ENOSPC since that only happens with no
		 * space reservation, when breaking up an extent into two
		 * pieces.  This is the last block of an extent.
		 */
		FUNC0(error != ENOSPC);
		FUNC3(tp, bp);
		return error;
	}
	/*
	 * Return that we succeeded.
	 */
	*rvalp = 1;
	return 0;
}