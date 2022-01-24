#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_50__   TYPE_9__ ;
typedef  struct TYPE_49__   TYPE_7__ ;
typedef  struct TYPE_48__   TYPE_6__ ;
typedef  struct TYPE_47__   TYPE_5__ ;
typedef  struct TYPE_46__   TYPE_4__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_2__ ;
typedef  struct TYPE_43__   TYPE_1__ ;
typedef  struct TYPE_42__   TYPE_11__ ;
typedef  struct TYPE_41__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_45__ {scalar_t__ m_dirblksize; size_t m_dirdatablk; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_46__ {TYPE_3__* i_mount; } ;
typedef  TYPE_4__ xfs_inode_t ;
struct TYPE_47__ {int /*<<< orphan*/  bestcount; } ;
typedef  TYPE_5__ xfs_dir2_leaf_tail_t ;
struct TYPE_44__ {TYPE_1__* bestfree; int /*<<< orphan*/  stale; } ;
struct TYPE_48__ {TYPE_2__ hdr; TYPE_7__* ents; } ;
typedef  TYPE_6__ xfs_dir2_leaf_t ;
struct TYPE_49__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_7__ xfs_dir2_leaf_entry_t ;
typedef  size_t xfs_dir2_db_t ;
typedef  TYPE_6__ xfs_dir2_data_t ;
typedef  scalar_t__ xfs_dir2_data_off_t ;
struct TYPE_50__ {int /*<<< orphan*/  namelen; } ;
typedef  TYPE_9__ xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct TYPE_41__ {TYPE_6__* data; } ;
typedef  TYPE_10__ xfs_dabuf_t ;
struct TYPE_42__ {scalar_t__ total; int /*<<< orphan*/ * trans; TYPE_4__* dp; } ;
typedef  TYPE_11__ xfs_da_args_t ;
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_43__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 scalar_t__ NULLDATAOFF ; 
 int /*<<< orphan*/  XFS_DIR2_NULL_DATAPTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 size_t FUNC15 (TYPE_3__*,int) ; 
 int FUNC16 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_10__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_10__*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int FUNC23 (TYPE_11__*,TYPE_10__**,int*,TYPE_10__**) ; 
 TYPE_5__* FUNC24 (TYPE_3__*,TYPE_6__*) ; 
 int FUNC25 (TYPE_11__*,TYPE_10__*,TYPE_10__*) ; 
 int FUNC26 (TYPE_11__*,size_t,TYPE_10__*) ; 

int						/* error */
FUNC27(
	xfs_da_args_t		*args)		/* operation arguments */
{
	__be16			*bestsp;	/* leaf block best freespace */
	xfs_dir2_data_t		*data;		/* data block structure */
	xfs_dir2_db_t		db;		/* data block number */
	xfs_dabuf_t		*dbp;		/* data block buffer */
	xfs_dir2_data_entry_t	*dep;		/* data entry structure */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	xfs_dir2_db_t		i;		/* temporary data block # */
	int			index;		/* index into leaf entries */
	xfs_dabuf_t		*lbp;		/* leaf buffer */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_entry_t	*lep;		/* leaf entry */
	xfs_dir2_leaf_tail_t	*ltp;		/* leaf tail structure */
	xfs_mount_t		*mp;		/* filesystem mount point */
	int			needlog;	/* need to log data header */
	int			needscan;	/* need to rescan data frees */
	xfs_dir2_data_off_t	oldbest;	/* old value of best free */
	xfs_trans_t		*tp;		/* transaction pointer */

	FUNC8(args);

	/*
	 * Lookup the leaf entry, get the leaf and data blocks read in.
	 */
	if ((error = FUNC23(args, &lbp, &index, &dbp))) {
		return error;
	}
	dp = args->dp;
	tp = args->trans;
	mp = dp->i_mount;
	leaf = lbp->data;
	data = dbp->data;
	FUNC10(dp, dbp);
	/*
	 * Point to the leaf entry, use that to point to the data entry.
	 */
	lep = &leaf->ents[index];
	db = FUNC15(mp, FUNC4(lep->address));
	dep = (xfs_dir2_data_entry_t *)
	      ((char *)data + FUNC16(mp, FUNC4(lep->address)));
	needscan = needlog = 0;
	oldbest = FUNC2(data->hdr.bestfree[0].length);
	ltp = FUNC24(mp, leaf);
	bestsp = FUNC17(ltp);
	FUNC0(FUNC2(bestsp[db]) == oldbest);
	/*
	 * Mark the former data entry unused.
	 */
	FUNC14(tp, dbp,
		(xfs_dir2_data_aoff_t)((char *)dep - (char *)data),
		FUNC11(dep->namelen), &needlog, &needscan);
	/*
	 * We just mark the leaf entry stale by putting a null in it.
	 */
	FUNC1(&leaf->hdr.stale, 1);
	FUNC21(tp, lbp);
	lep->address = FUNC6(XFS_DIR2_NULL_DATAPTR);
	FUNC20(tp, lbp, index, index);
	/*
	 * Scan the freespace in the data block again if necessary,
	 * log the data block header if necessary.
	 */
	if (needscan)
		FUNC12(mp, data, &needlog);
	if (needlog)
		FUNC13(tp, dbp);
	/*
	 * If the longest freespace in the data block has changed,
	 * put the new value in the bests table and log that.
	 */
	if (FUNC2(data->hdr.bestfree[0].length) != oldbest) {
		bestsp[db] = data->hdr.bestfree[0].length;
		FUNC19(tp, lbp, db, db);
	}
	FUNC10(dp, dbp);
	/*
	 * If the data block is now empty then get rid of the data block.
	 */
	if (FUNC2(data->hdr.bestfree[0].length) ==
	    mp->m_dirblksize - (uint)sizeof(data->hdr)) {
		FUNC0(db != mp->m_dirdatablk);
		if ((error = FUNC26(args, db, dbp))) {
			/*
			 * Nope, can't get rid of it because it caused
			 * allocation of a bmap btree block to do so.
			 * Just go on, returning success, leaving the
			 * empty block in place.
			 */
			if (error == ENOSPC && args->total == 0) {
				FUNC9(dbp);
				error = 0;
			}
			FUNC18(dp, lbp);
			FUNC9(lbp);
			return error;
		}
		dbp = NULL;
		/*
		 * If this is the last data block then compact the
		 * bests table by getting rid of entries.
		 */
		if (db == FUNC4(ltp->bestcount) - 1) {
			/*
			 * Look for the last active entry (i).
			 */
			for (i = db - 1; i > 0; i--) {
				if (FUNC2(bestsp[i]) != NULLDATAOFF)
					break;
			}
			/*
			 * Copy the table down so inactive entries at the
			 * end are removed.
			 */
			FUNC7(&bestsp[db - i], bestsp,
				(FUNC4(ltp->bestcount) - (db - i)) * sizeof(*bestsp));
			FUNC3(&ltp->bestcount, -(db - i));
			FUNC22(tp, lbp);
			FUNC19(tp, lbp, 0, FUNC4(ltp->bestcount) - 1);
		} else
			bestsp[db] = FUNC5(NULLDATAOFF);
	}
	/*
	 * If the data block was not the first one, drop it.
	 */
	else if (db != mp->m_dirdatablk && dbp != NULL) {
		FUNC9(dbp);
		dbp = NULL;
	}
	FUNC18(dp, lbp);
	/*
	 * See if we can convert to block form.
	 */
	return FUNC25(args, lbp, dbp);
}