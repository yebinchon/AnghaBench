#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_33__ {int m_dirblksize; } ;
typedef  TYPE_4__ xfs_mount_t ;
struct TYPE_30__ {scalar_t__ di_size; } ;
struct TYPE_34__ {TYPE_1__ i_d; TYPE_4__* i_mount; } ;
typedef  TYPE_5__ xfs_inode_t ;
struct TYPE_35__ {int /*<<< orphan*/  bestcount; } ;
typedef  TYPE_6__ xfs_dir2_leaf_tail_t ;
struct TYPE_31__ {void* magic; } ;
struct TYPE_32__ {int /*<<< orphan*/  nvalid; TYPE_2__ info; void* nused; scalar_t__ firstdb; void* magic; } ;
struct TYPE_36__ {TYPE_3__ hdr; void** bests; } ;
typedef  TYPE_7__ xfs_dir2_leaf_t ;
typedef  TYPE_7__ xfs_dir2_free_t ;
typedef  scalar_t__ xfs_dir2_db_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_off_t ;
struct TYPE_37__ {TYPE_7__* data; } ;
typedef  TYPE_9__ xfs_dabuf_t ;
struct TYPE_29__ {int /*<<< orphan*/ * trans; TYPE_5__* dp; } ;
typedef  TYPE_10__ xfs_da_args_t ;
typedef  int uint ;
typedef  void* __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NULLDATAOFF ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int XFS_DIR2_FREE_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_FREE_SPACE ; 
 int /*<<< orphan*/  XFS_DIR2_LEAFN_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int,TYPE_9__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 int FUNC12 (TYPE_10__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 void** FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 TYPE_6__* FUNC15 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,TYPE_9__*) ; 

int						/* error */
FUNC17(
	xfs_da_args_t		*args,		/* operation arguments */
	xfs_dabuf_t		*lbp)		/* leaf buffer */
{
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return value */
	xfs_dabuf_t		*fbp;		/* freespace buffer */
	xfs_dir2_db_t		fdb;		/* freespace block number */
	xfs_dir2_free_t		*free;		/* freespace structure */
	__be16			*from;		/* pointer to freespace entry */
	int			i;		/* leaf freespace index */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_tail_t	*ltp;		/* leaf tail structure */
	xfs_mount_t		*mp;		/* filesystem mount point */
	int			n;		/* count of live freespc ents */
	xfs_dir2_data_off_t	off;		/* freespace entry value */
	__be16			*to;		/* pointer to freespace entry */
	xfs_trans_t		*tp;		/* transaction pointer */

	FUNC6(args);

	dp = args->dp;
	mp = dp->i_mount;
	tp = args->trans;
	/*
	 * Add a freespace block to the directory.
	 */
	if ((error = FUNC12(args, XFS_DIR2_FREE_SPACE, &fdb))) {
		return error;
	}
	FUNC0(fdb == FUNC1(mp));
	/*
	 * Get the buffer for the new freespace block.
	 */
	if ((error = FUNC8(tp, dp, FUNC9(mp, fdb), -1, &fbp,
			XFS_DATA_FORK))) {
		return error;
	}
	FUNC0(fbp != NULL);
	free = fbp->data;
	leaf = lbp->data;
	ltp = FUNC15(mp, leaf);
	/*
	 * Initialize the freespace block header.
	 */
	free->hdr.magic = FUNC5(XFS_DIR2_FREE_MAGIC);
	free->hdr.firstdb = 0;
	FUNC0(FUNC3(ltp->bestcount) <= (uint)dp->i_d.di_size / mp->m_dirblksize);
	free->hdr.nvalid = ltp->bestcount;
	/*
	 * Copy freespace entries from the leaf block to the new block.
	 * Count active entries.
	 */
	for (i = n = 0, from = FUNC13(ltp), to = free->bests;
	     i < FUNC3(ltp->bestcount); i++, from++, to++) {
		if ((off = FUNC2(*from)) != NULLDATAOFF)
			n++;
		*to = FUNC4(off);
	}
	free->hdr.nused = FUNC5(n);
	leaf->hdr.info.magic = FUNC4(XFS_DIR2_LEAFN_MAGIC);
	/*
	 * Log everything.
	 */
	FUNC14(tp, lbp);
	FUNC11(tp, fbp);
	FUNC10(tp, fbp, 0, FUNC3(free->hdr.nvalid) - 1);
	FUNC7(fbp);
	FUNC16(dp, lbp);
	return 0;
}