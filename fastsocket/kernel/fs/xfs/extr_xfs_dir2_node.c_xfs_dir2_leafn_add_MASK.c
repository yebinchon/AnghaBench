#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_18__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;
struct TYPE_17__ {scalar_t__ stale; scalar_t__ count; } ;
struct TYPE_19__ {TYPE_1__ hdr; TYPE_4__* ents; } ;
typedef  TYPE_3__ xfs_dir2_leaf_t ;
struct TYPE_20__ {void* address; void* hashval; } ;
typedef  TYPE_4__ xfs_dir2_leaf_entry_t ;
struct TYPE_21__ {TYPE_3__* data; } ;
typedef  TYPE_5__ xfs_dabuf_t ;
struct TYPE_22__ {scalar_t__ hashval; int op_flags; int /*<<< orphan*/  index; int /*<<< orphan*/  blkno; int /*<<< orphan*/ * trans; TYPE_2__* dp; } ;
typedef  TYPE_6__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  ENOSPC ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int XFS_DA_OP_JUSTCHECK ; 
 scalar_t__ XFS_DIR2_NULL_DATAPTR ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (void*) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_5__*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int					/* error */
FUNC16(
	xfs_dabuf_t		*bp,		/* leaf buffer */
	xfs_da_args_t		*args,		/* operation arguments */
	int			index)		/* insertion pt for new entry */
{
	int			compact;	/* compacting stale leaves */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			highstale;	/* next stale entry */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_entry_t	*lep;		/* leaf entry */
	int			lfloghigh;	/* high leaf entry logging */
	int			lfloglow;	/* low leaf entry logging */
	int			lowstale;	/* previous stale entry */
	xfs_mount_t		*mp;		/* filesystem mount point */
	xfs_trans_t		*tp;		/* transaction pointer */

	FUNC9(args, index);

	dp = args->dp;
	mp = dp->i_mount;
	tp = args->trans;
	leaf = bp->data;

	/*
	 * Quick check just to make sure we are not going to index
	 * into other peoples memory
	 */
	if (index < 0)
		return FUNC3(EFSCORRUPTED);

	/*
	 * If there are already the maximum number of leaf entries in
	 * the block, if there are no stale entries it won't fit.
	 * Caller will do a split.  If there are stale entries we'll do
	 * a compact.
	 */

	if (FUNC5(leaf->hdr.count) == FUNC15(mp)) {
		if (!leaf->hdr.stale)
			return FUNC3(ENOSPC);
		compact = FUNC5(leaf->hdr.stale) > 1;
	} else
		compact = 0;
	FUNC0(index == 0 || FUNC6(leaf->ents[index - 1].hashval) <= args->hashval);
	FUNC0(index == FUNC5(leaf->hdr.count) ||
	       FUNC6(leaf->ents[index].hashval) >= args->hashval);

	if (args->op_flags & XFS_DA_OP_JUSTCHECK)
		return 0;

	/*
	 * Compact out all but one stale leaf entry.  Leaves behind
	 * the entry closest to index.
	 */
	if (compact) {
		FUNC11(bp, &index, &lowstale, &highstale,
			&lfloglow, &lfloghigh);
	}
	/*
	 * Set impossible logging indices for this case.
	 */
	else if (leaf->hdr.stale) {
		lfloglow = FUNC5(leaf->hdr.count);
		lfloghigh = -1;
	}
	/*
	 * No stale entries, just insert a space for the new entry.
	 */
	if (!leaf->hdr.stale) {
		lep = &leaf->ents[index];
		if (index < FUNC5(leaf->hdr.count))
			FUNC8(lep + 1, lep,
				(FUNC5(leaf->hdr.count) - index) * sizeof(*lep));
		lfloglow = index;
		lfloghigh = FUNC5(leaf->hdr.count);
		FUNC4(&leaf->hdr.count, 1);
	}
	/*
	 * There are stale entries.  We'll use one for the new entry.
	 */
	else {
		/*
		 * If we didn't do a compact then we need to figure out
		 * which stale entry will be used.
		 */
		if (compact == 0) {
			/*
			 * Find first stale entry before our insertion point.
			 */
			for (lowstale = index - 1;
			     lowstale >= 0 &&
				FUNC6(leaf->ents[lowstale].address) !=
				XFS_DIR2_NULL_DATAPTR;
			     lowstale--)
				continue;
			/*
			 * Find next stale entry after insertion point.
			 * Stop looking if the answer would be worse than
			 * lowstale already found.
			 */
			for (highstale = index;
			     highstale < FUNC5(leaf->hdr.count) &&
				FUNC6(leaf->ents[highstale].address) !=
				XFS_DIR2_NULL_DATAPTR &&
				(lowstale < 0 ||
				 index - lowstale - 1 >= highstale - index);
			     highstale++)
				continue;
		}
		/*
		 * Using the low stale entry.
		 * Shift entries up toward the stale slot.
		 */
		if (lowstale >= 0 &&
		    (highstale == FUNC5(leaf->hdr.count) ||
		     index - lowstale - 1 < highstale - index)) {
			FUNC0(FUNC6(leaf->ents[lowstale].address) ==
			       XFS_DIR2_NULL_DATAPTR);
			FUNC0(index - lowstale - 1 >= 0);
			if (index - lowstale - 1 > 0)
				FUNC8(&leaf->ents[lowstale],
					&leaf->ents[lowstale + 1],
					(index - lowstale - 1) * sizeof(*lep));
			lep = &leaf->ents[index - 1];
			lfloglow = FUNC2(lowstale, lfloglow);
			lfloghigh = FUNC1(index - 1, lfloghigh);
		}
		/*
		 * Using the high stale entry.
		 * Shift entries down toward the stale slot.
		 */
		else {
			FUNC0(FUNC6(leaf->ents[highstale].address) ==
			       XFS_DIR2_NULL_DATAPTR);
			FUNC0(highstale - index >= 0);
			if (highstale - index > 0)
				FUNC8(&leaf->ents[index + 1],
					&leaf->ents[index],
					(highstale - index) * sizeof(*lep));
			lep = &leaf->ents[index];
			lfloglow = FUNC2(index, lfloglow);
			lfloghigh = FUNC1(highstale, lfloghigh);
		}
		FUNC4(&leaf->hdr.stale, -1);
	}
	/*
	 * Insert the new entry, log everything.
	 */
	lep->hashval = FUNC7(args->hashval);
	lep->address = FUNC7(FUNC10(mp,
				args->blkno, args->index));
	FUNC13(tp, bp);
	FUNC12(tp, bp, lfloglow, lfloghigh);
	FUNC14(dp, bp);
	return 0;
}