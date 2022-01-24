#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_18__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
struct TYPE_19__ {scalar_t__ bestcount; } ;
typedef  TYPE_4__ xfs_dir2_leaf_tail_t ;
struct TYPE_16__ {scalar_t__ back; scalar_t__ forw; int /*<<< orphan*/  magic; } ;
struct TYPE_17__ {scalar_t__ stale; scalar_t__ count; TYPE_1__ info; } ;
struct TYPE_20__ {TYPE_2__ hdr; } ;
typedef  TYPE_5__ xfs_dir2_leaf_t ;
typedef  scalar_t__ xfs_dir2_db_t ;
struct TYPE_21__ {TYPE_5__* data; } ;
typedef  TYPE_6__ xfs_dabuf_t ;
struct TYPE_22__ {int /*<<< orphan*/ * trans; TYPE_3__* dp; } ;
typedef  TYPE_7__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int XFS_DIR2_LEAF1_MAGIC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int,TYPE_6__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,TYPE_5__*) ; 

int
FUNC9(
	xfs_da_args_t		*args,		/* operation arguments */
	xfs_dir2_db_t		bno,		/* directory block number */
	xfs_dabuf_t		**bpp,		/* out: leaf buffer */
	int			magic)		/* magic number for block */
{
	xfs_dabuf_t		*bp;		/* leaf buffer */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_tail_t	*ltp;		/* leaf tail structure */
	xfs_mount_t		*mp;		/* filesystem mount point */
	xfs_trans_t		*tp;		/* transaction pointer */

	dp = args->dp;
	FUNC0(dp != NULL);
	tp = args->trans;
	mp = dp->i_mount;
	FUNC0(bno >= FUNC2(mp) &&
	       bno < FUNC1(mp));
	/*
	 * Get the buffer for the block.
	 */
	error = FUNC4(tp, dp, FUNC5(mp, bno), -1, &bp,
		XFS_DATA_FORK);
	if (error) {
		return error;
	}
	FUNC0(bp != NULL);
	leaf = bp->data;
	/*
	 * Initialize the header.
	 */
	leaf->hdr.info.magic = FUNC3(magic);
	leaf->hdr.info.forw = 0;
	leaf->hdr.info.back = 0;
	leaf->hdr.count = 0;
	leaf->hdr.stale = 0;
	FUNC6(tp, bp);
	/*
	 * If it's a leaf-format directory initialize the tail.
	 * In this case our caller has the real bests table to copy into
	 * the block.
	 */
	if (magic == XFS_DIR2_LEAF1_MAGIC) {
		ltp = FUNC8(mp, leaf);
		ltp->bestcount = 0;
		FUNC7(tp, bp);
	}
	*bpp = bp;
	return 0;
}