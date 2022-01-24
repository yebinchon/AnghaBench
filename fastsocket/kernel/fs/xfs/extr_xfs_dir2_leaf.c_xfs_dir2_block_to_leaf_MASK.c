#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_9__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_40__ {int m_dirblksize; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_41__ {TYPE_3__* i_mount; } ;
typedef  TYPE_4__ xfs_inode_t ;
struct TYPE_42__ {void* bestcount; } ;
typedef  TYPE_5__ xfs_dir2_leaf_tail_t ;
struct TYPE_39__ {TYPE_1__* bestfree; void* magic; void* count; void* stale; } ;
struct TYPE_43__ {TYPE_2__ hdr; int /*<<< orphan*/  ents; } ;
typedef  TYPE_6__ xfs_dir2_leaf_t ;
typedef  int /*<<< orphan*/  xfs_dir2_leaf_entry_t ;
typedef  scalar_t__ xfs_dir2_db_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct TYPE_44__ {int /*<<< orphan*/  count; int /*<<< orphan*/  stale; } ;
typedef  TYPE_7__ xfs_dir2_block_tail_t ;
typedef  TYPE_6__ xfs_dir2_block_t ;
struct TYPE_45__ {TYPE_6__* data; } ;
typedef  TYPE_9__ xfs_dabuf_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_37__ {int /*<<< orphan*/ * trans; TYPE_4__* dp; } ;
typedef  TYPE_10__ xfs_da_args_t ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_38__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_DIR2_DATA_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF1_MAGIC ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int FUNC9 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_7__*) ; 
 TYPE_7__* FUNC11 (TYPE_3__*,TYPE_6__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,TYPE_9__*) ; 
 int FUNC19 (TYPE_10__*,scalar_t__,TYPE_9__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_5__* FUNC22 (TYPE_3__*,TYPE_6__*) ; 

int						/* error */
FUNC23(
	xfs_da_args_t		*args,		/* operation arguments */
	xfs_dabuf_t		*dbp)		/* input block's buffer */
{
	__be16			*bestsp;	/* leaf's bestsp entries */
	xfs_dablk_t		blkno;		/* leaf block's bno */
	xfs_dir2_block_t	*block;		/* block structure */
	xfs_dir2_leaf_entry_t	*blp;		/* block's leaf entries */
	xfs_dir2_block_tail_t	*btp;		/* block's tail */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	xfs_dabuf_t		*lbp;		/* leaf block's buffer */
	xfs_dir2_db_t		ldb;		/* leaf block's bno */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_tail_t	*ltp;		/* leaf's tail */
	xfs_mount_t		*mp;		/* filesystem mount point */
	int			needlog;	/* need to log block header */
	int			needscan;	/* need to rescan bestfree */
	xfs_trans_t		*tp;		/* transaction pointer */

	FUNC7(args);

	dp = args->dp;
	mp = dp->i_mount;
	tp = args->trans;
	/*
	 * Add the leaf block to the inode.
	 * This interface will only put blocks in the leaf/node range.
	 * Since that's empty now, we'll get the root (block 0 in range).
	 */
	if ((error = FUNC9(args, &blkno))) {
		return error;
	}
	ldb = FUNC12(mp, blkno);
	FUNC0(ldb == FUNC1(mp));
	/*
	 * Initialize the leaf block, get a buffer for it.
	 */
	if ((error = FUNC19(args, ldb, &lbp, XFS_DIR2_LEAF1_MAGIC))) {
		return error;
	}
	FUNC0(lbp != NULL);
	leaf = lbp->data;
	block = dbp->data;
	FUNC13(dp, dbp);
	btp = FUNC11(mp, block);
	blp = FUNC10(btp);
	/*
	 * Set the counts in the leaf header.
	 */
	leaf->hdr.count = FUNC4(FUNC3(btp->count));
	leaf->hdr.stale = FUNC4(FUNC3(btp->stale));
	/*
	 * Could compact these but I think we always do the conversion
	 * after squeezing out stale entries.
	 */
	FUNC6(leaf->ents, blp, FUNC3(btp->count) * sizeof(xfs_dir2_leaf_entry_t));
	FUNC21(tp, lbp, 0, FUNC2(leaf->hdr.count) - 1);
	needscan = 0;
	needlog = 1;
	/*
	 * Make the space formerly occupied by the leaf entries and block
	 * tail be free.
	 */
	FUNC16(tp, dbp,
		(xfs_dir2_data_aoff_t)((char *)blp - (char *)block),
		(xfs_dir2_data_aoff_t)((char *)block + mp->m_dirblksize -
				       (char *)blp),
		&needlog, &needscan);
	/*
	 * Fix up the block header, make it a data block.
	 */
	block->hdr.magic = FUNC5(XFS_DIR2_DATA_MAGIC);
	if (needscan)
		FUNC14(mp, (xfs_dir2_data_t *)block, &needlog);
	/*
	 * Set up leaf tail and bests table.
	 */
	ltp = FUNC22(mp, leaf);
	ltp->bestcount = FUNC5(1);
	bestsp = FUNC17(ltp);
	bestsp[0] =  block->hdr.bestfree[0].length;
	/*
	 * Log the data header and leaf bests table.
	 */
	if (needlog)
		FUNC15(tp, dbp);
	FUNC18(dp, lbp);
	FUNC13(dp, dbp);
	FUNC20(tp, lbp, 0, 0);
	FUNC8(lbp);
	return 0;
}