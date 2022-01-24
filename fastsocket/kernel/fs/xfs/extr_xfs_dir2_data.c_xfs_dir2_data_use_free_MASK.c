#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_20__ {scalar_t__ freetag; scalar_t__ length; } ;
typedef  TYPE_2__ xfs_dir2_data_unused_t ;
struct TYPE_19__ {TYPE_4__* bestfree; int /*<<< orphan*/  magic; } ;
struct TYPE_21__ {TYPE_1__ hdr; } ;
typedef  TYPE_3__ xfs_dir2_data_t ;
struct TYPE_22__ {scalar_t__ length; scalar_t__ offset; } ;
typedef  TYPE_4__ xfs_dir2_data_free_t ;
typedef  int xfs_dir2_data_aoff_t ;
struct TYPE_23__ {TYPE_3__* data; } ;
typedef  TYPE_5__ xfs_dabuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ; 
 int XFS_DIR2_DATA_FREE_TAG ; 
 scalar_t__ XFS_DIR2_DATA_MAGIC ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 TYPE_4__* FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_2__*) ; 
 scalar_t__* FUNC8 (TYPE_2__*) ; 

void
FUNC9(
	xfs_trans_t		*tp,		/* transaction pointer */
	xfs_dabuf_t		*bp,		/* data block buffer */
	xfs_dir2_data_unused_t	*dup,		/* unused entry */
	xfs_dir2_data_aoff_t	offset,		/* starting offset to use */
	xfs_dir2_data_aoff_t	len,		/* length to use */
	int			*needlogp,	/* out: need to log header */
	int			*needscanp)	/* out: need regen bestfree */
{
	xfs_dir2_data_t		*d;		/* data block */
	xfs_dir2_data_free_t	*dfp;		/* bestfree pointer */
	int			matchback;	/* matches end of freespace */
	int			matchfront;	/* matches start of freespace */
	int			needscan;	/* need to regen bestfree */
	xfs_dir2_data_unused_t	*newdup;	/* new unused entry */
	xfs_dir2_data_unused_t	*newdup2;	/* another new unused entry */
	int			oldlen;		/* old unused entry's length */

	d = bp->data;
	FUNC0(FUNC2(d->hdr.magic) == XFS_DIR2_DATA_MAGIC ||
	       FUNC2(d->hdr.magic) == XFS_DIR2_BLOCK_MAGIC);
	FUNC0(FUNC1(dup->freetag) == XFS_DIR2_DATA_FREE_TAG);
	FUNC0(offset >= (char *)dup - (char *)d);
	FUNC0(offset + len <= (char *)dup + FUNC1(dup->length) - (char *)d);
	FUNC0((char *)dup - (char *)d == FUNC1(*FUNC8(dup)));
	/*
	 * Look up the entry in the bestfree table.
	 */
	dfp = FUNC4(d, dup);
	oldlen = FUNC1(dup->length);
	FUNC0(dfp || oldlen <= FUNC1(d->hdr.bestfree[2].length));
	/*
	 * Check for alignment with front and back of the entry.
	 */
	matchfront = (char *)dup - (char *)d == offset;
	matchback = (char *)dup + oldlen - (char *)d == offset + len;
	FUNC0(*needscanp == 0);
	needscan = 0;
	/*
	 * If we matched it exactly we just need to get rid of it from
	 * the bestfree table.
	 */
	if (matchfront && matchback) {
		if (dfp) {
			needscan = (d->hdr.bestfree[2].offset != 0);
			if (!needscan)
				FUNC6(d, dfp, needlogp);
		}
	}
	/*
	 * We match the first part of the entry.
	 * Make a new entry with the remaining freespace.
	 */
	else if (matchfront) {
		newdup = (xfs_dir2_data_unused_t *)((char *)d + offset + len);
		newdup->freetag = FUNC3(XFS_DIR2_DATA_FREE_TAG);
		newdup->length = FUNC3(oldlen - len);
		*FUNC8(newdup) =
			FUNC3((char *)newdup - (char *)d);
		FUNC7(tp, bp, newdup);
		/*
		 * If it was in the table, remove it and add the new one.
		 */
		if (dfp) {
			FUNC6(d, dfp, needlogp);
			dfp = FUNC5(d, newdup, needlogp);
			FUNC0(dfp != NULL);
			FUNC0(dfp->length == newdup->length);
			FUNC0(FUNC1(dfp->offset) == (char *)newdup - (char *)d);
			/*
			 * If we got inserted at the last slot,
			 * that means we don't know if there was a better
			 * choice for the last slot, or not.  Rescan.
			 */
			needscan = dfp == &d->hdr.bestfree[2];
		}
	}
	/*
	 * We match the last part of the entry.
	 * Trim the allocated space off the tail of the entry.
	 */
	else if (matchback) {
		newdup = dup;
		newdup->length = FUNC3(((char *)d + offset) - (char *)newdup);
		*FUNC8(newdup) =
			FUNC3((char *)newdup - (char *)d);
		FUNC7(tp, bp, newdup);
		/*
		 * If it was in the table, remove it and add the new one.
		 */
		if (dfp) {
			FUNC6(d, dfp, needlogp);
			dfp = FUNC5(d, newdup, needlogp);
			FUNC0(dfp != NULL);
			FUNC0(dfp->length == newdup->length);
			FUNC0(FUNC1(dfp->offset) == (char *)newdup - (char *)d);
			/*
			 * If we got inserted at the last slot,
			 * that means we don't know if there was a better
			 * choice for the last slot, or not.  Rescan.
			 */
			needscan = dfp == &d->hdr.bestfree[2];
		}
	}
	/*
	 * Poking out the middle of an entry.
	 * Make two new entries.
	 */
	else {
		newdup = dup;
		newdup->length = FUNC3(((char *)d + offset) - (char *)newdup);
		*FUNC8(newdup) =
			FUNC3((char *)newdup - (char *)d);
		FUNC7(tp, bp, newdup);
		newdup2 = (xfs_dir2_data_unused_t *)((char *)d + offset + len);
		newdup2->freetag = FUNC3(XFS_DIR2_DATA_FREE_TAG);
		newdup2->length = FUNC3(oldlen - len - FUNC1(newdup->length));
		*FUNC8(newdup2) =
			FUNC3((char *)newdup2 - (char *)d);
		FUNC7(tp, bp, newdup2);
		/*
		 * If the old entry was in the table, we need to scan
		 * if the 3rd entry was valid, since these entries
		 * are smaller than the old one.
		 * If we don't need to scan that means there were 1 or 2
		 * entries in the table, and removing the old and adding
		 * the 2 new will work.
		 */
		if (dfp) {
			needscan = (d->hdr.bestfree[2].length != 0);
			if (!needscan) {
				FUNC6(d, dfp, needlogp);
				(void)FUNC5(d, newdup,
					needlogp);
				(void)FUNC5(d, newdup2,
					needlogp);
			}
		}
	}
	*needscanp = needscan;
}