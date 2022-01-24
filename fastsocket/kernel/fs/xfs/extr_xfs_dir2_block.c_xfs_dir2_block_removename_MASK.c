#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_25__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_dir2_sf_hdr_t ;
struct TYPE_26__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_2__ xfs_dir2_leaf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_t ;
struct TYPE_27__ {int /*<<< orphan*/  namelen; } ;
typedef  TYPE_3__ xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct TYPE_28__ {int /*<<< orphan*/  stale; } ;
typedef  TYPE_4__ xfs_dir2_block_tail_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_t ;
struct TYPE_29__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_5__ xfs_dabuf_t ;
struct TYPE_30__ {int /*<<< orphan*/ * trans; TYPE_1__* dp; } ;
typedef  TYPE_6__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_DIR2_NULL_DATAPTR ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 TYPE_2__* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC9 (TYPE_6__*,TYPE_5__**,int*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_6__*,TYPE_5__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int						/* error */
FUNC19(
	xfs_da_args_t		*args)		/* directory operation args */
{
	xfs_dir2_block_t	*block;		/* block structure */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf pointer */
	xfs_dabuf_t		*bp;		/* block buffer */
	xfs_dir2_block_tail_t	*btp;		/* block tail */
	xfs_dir2_data_entry_t	*dep;		/* block data entry */
	xfs_inode_t		*dp;		/* incore inode */
	int			ent;		/* block leaf entry index */
	int			error;		/* error return value */
	xfs_mount_t		*mp;		/* filesystem mount point */
	int			needlog;	/* need to log block header */
	int			needscan;	/* need to fixup bestfree */
	xfs_dir2_sf_hdr_t	sfh;		/* shortform header */
	int			size;		/* shortform size */
	xfs_trans_t		*tp;		/* transaction pointer */

	FUNC4(args);

	/*
	 * Look up the entry in the block.  Gets the buffer and entry index.
	 * It will always be there, the vnodeops level does a lookup first.
	 */
	if ((error = FUNC9(args, &bp, &ent))) {
		return error;
	}
	dp = args->dp;
	tp = args->trans;
	mp = dp->i_mount;
	block = bp->data;
	btp = FUNC11(mp, block);
	blp = FUNC6(btp);
	/*
	 * Point to the data entry using the leaf entry.
	 */
	dep = (xfs_dir2_data_entry_t *)
	      ((char *)block + FUNC18(mp, FUNC2(blp[ent].address)));
	/*
	 * Mark the data entry's space free.
	 */
	needlog = needscan = 0;
	FUNC17(tp, bp,
		(xfs_dir2_data_aoff_t)((char *)dep - (char *)block),
		FUNC14(dep->namelen), &needlog, &needscan);
	/*
	 * Fix up the block tail.
	 */
	FUNC1(&btp->stale, 1);
	FUNC8(tp, bp);
	/*
	 * Remove the leaf entry by marking it stale.
	 */
	blp[ent].address = FUNC3(XFS_DIR2_NULL_DATAPTR);
	FUNC7(tp, bp, ent, ent);
	/*
	 * Fix up bestfree, log the header if necessary.
	 */
	if (needscan)
		FUNC15(mp, (xfs_dir2_data_t *)block, &needlog);
	if (needlog)
		FUNC16(tp, bp);
	FUNC13(dp, bp);
	/*
	 * See if the size as a shortform is good enough.
	 */
	if ((size = FUNC10(dp, block, &sfh)) >
	    FUNC0(dp)) {
		FUNC5(bp);
		return 0;
	}
	/*
	 * If it works, do the conversion.
	 */
	return FUNC12(args, bp, size, &sfh);
}