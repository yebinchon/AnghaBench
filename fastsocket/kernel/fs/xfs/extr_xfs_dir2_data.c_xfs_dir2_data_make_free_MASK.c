#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_3__* t_mountp; } ;
typedef  TYPE_2__ xfs_trans_t ;
struct TYPE_25__ {int m_dirblksize; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_26__ {scalar_t__ freetag; scalar_t__ length; } ;
typedef  TYPE_4__ xfs_dir2_data_unused_t ;
struct TYPE_23__ {TYPE_6__* bestfree; int /*<<< orphan*/  magic; } ;
struct TYPE_27__ {TYPE_1__ hdr; } ;
typedef  TYPE_5__ xfs_dir2_data_t ;
struct TYPE_28__ {scalar_t__ length; } ;
typedef  TYPE_6__ xfs_dir2_data_free_t ;
typedef  int xfs_dir2_data_aoff_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_tail_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_t ;
struct TYPE_29__ {TYPE_5__* data; } ;
typedef  TYPE_7__ xfs_dabuf_t ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ; 
 int XFS_DIR2_DATA_FREE_TAG ; 
 scalar_t__ XFS_DIR2_DATA_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC7 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_6__* FUNC8 (TYPE_5__*,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_7__*,TYPE_4__*) ; 
 void** FUNC11 (TYPE_4__*) ; 

void
FUNC12(
	xfs_trans_t		*tp,		/* transaction pointer */
	xfs_dabuf_t		*bp,		/* block buffer */
	xfs_dir2_data_aoff_t	offset,		/* starting byte offset */
	xfs_dir2_data_aoff_t	len,		/* length in bytes */
	int			*needlogp,	/* out: log header */
	int			*needscanp)	/* out: regen bestfree */
{
	xfs_dir2_data_t		*d;		/* data block pointer */
	xfs_dir2_data_free_t	*dfp;		/* bestfree pointer */
	char			*endptr;	/* end of data area */
	xfs_mount_t		*mp;		/* filesystem mount point */
	int			needscan;	/* need to regen bestfree */
	xfs_dir2_data_unused_t	*newdup;	/* new unused entry */
	xfs_dir2_data_unused_t	*postdup;	/* unused entry after us */
	xfs_dir2_data_unused_t	*prevdup;	/* unused entry before us */

	mp = tp->t_mountp;
	d = bp->data;
	/*
	 * Figure out where the end of the data area is.
	 */
	if (FUNC3(d->hdr.magic) == XFS_DIR2_DATA_MAGIC)
		endptr = (char *)d + mp->m_dirblksize;
	else {
		xfs_dir2_block_tail_t	*btp;	/* block tail */

		FUNC0(FUNC3(d->hdr.magic) == XFS_DIR2_BLOCK_MAGIC);
		btp = FUNC6(mp, (xfs_dir2_block_t *)d);
		endptr = (char *)FUNC5(btp);
	}
	/*
	 * If this isn't the start of the block, then back up to
	 * the previous entry and see if it's free.
	 */
	if (offset > sizeof(d->hdr)) {
		__be16			*tagp;	/* tag just before us */

		tagp = (__be16 *)((char *)d + offset) - 1;
		prevdup = (xfs_dir2_data_unused_t *)((char *)d + FUNC2(*tagp));
		if (FUNC2(prevdup->freetag) != XFS_DIR2_DATA_FREE_TAG)
			prevdup = NULL;
	} else
		prevdup = NULL;
	/*
	 * If this isn't the end of the block, see if the entry after
	 * us is free.
	 */
	if ((char *)d + offset + len < endptr) {
		postdup =
			(xfs_dir2_data_unused_t *)((char *)d + offset + len);
		if (FUNC2(postdup->freetag) != XFS_DIR2_DATA_FREE_TAG)
			postdup = NULL;
	} else
		postdup = NULL;
	FUNC0(*needscanp == 0);
	needscan = 0;
	/*
	 * Previous and following entries are both free,
	 * merge everything into a single free entry.
	 */
	if (prevdup && postdup) {
		xfs_dir2_data_free_t	*dfp2;	/* another bestfree pointer */

		/*
		 * See if prevdup and/or postdup are in bestfree table.
		 */
		dfp = FUNC7(d, prevdup);
		dfp2 = FUNC7(d, postdup);
		/*
		 * We need a rescan unless there are exactly 2 free entries
		 * namely our two.  Then we know what's happening, otherwise
		 * since the third bestfree is there, there might be more
		 * entries.
		 */
		needscan = (d->hdr.bestfree[2].length != 0);
		/*
		 * Fix up the new big freespace.
		 */
		FUNC1(&prevdup->length, len + FUNC2(postdup->length));
		*FUNC11(prevdup) =
			FUNC4((char *)prevdup - (char *)d);
		FUNC10(tp, bp, prevdup);
		if (!needscan) {
			/*
			 * Has to be the case that entries 0 and 1 are
			 * dfp and dfp2 (don't know which is which), and
			 * entry 2 is empty.
			 * Remove entry 1 first then entry 0.
			 */
			FUNC0(dfp && dfp2);
			if (dfp == &d->hdr.bestfree[1]) {
				dfp = &d->hdr.bestfree[0];
				FUNC0(dfp2 == dfp);
				dfp2 = &d->hdr.bestfree[1];
			}
			FUNC9(d, dfp2, needlogp);
			FUNC9(d, dfp, needlogp);
			/*
			 * Now insert the new entry.
			 */
			dfp = FUNC8(d, prevdup, needlogp);
			FUNC0(dfp == &d->hdr.bestfree[0]);
			FUNC0(dfp->length == prevdup->length);
			FUNC0(!dfp[1].length);
			FUNC0(!dfp[2].length);
		}
	}
	/*
	 * The entry before us is free, merge with it.
	 */
	else if (prevdup) {
		dfp = FUNC7(d, prevdup);
		FUNC1(&prevdup->length, len);
		*FUNC11(prevdup) =
			FUNC4((char *)prevdup - (char *)d);
		FUNC10(tp, bp, prevdup);
		/*
		 * If the previous entry was in the table, the new entry
		 * is longer, so it will be in the table too.  Remove
		 * the old one and add the new one.
		 */
		if (dfp) {
			FUNC9(d, dfp, needlogp);
			(void)FUNC8(d, prevdup, needlogp);
		}
		/*
		 * Otherwise we need a scan if the new entry is big enough.
		 */
		else {
			needscan = FUNC2(prevdup->length) >
				   FUNC2(d->hdr.bestfree[2].length);
		}
	}
	/*
	 * The following entry is free, merge with it.
	 */
	else if (postdup) {
		dfp = FUNC7(d, postdup);
		newdup = (xfs_dir2_data_unused_t *)((char *)d + offset);
		newdup->freetag = FUNC4(XFS_DIR2_DATA_FREE_TAG);
		newdup->length = FUNC4(len + FUNC2(postdup->length));
		*FUNC11(newdup) =
			FUNC4((char *)newdup - (char *)d);
		FUNC10(tp, bp, newdup);
		/*
		 * If the following entry was in the table, the new entry
		 * is longer, so it will be in the table too.  Remove
		 * the old one and add the new one.
		 */
		if (dfp) {
			FUNC9(d, dfp, needlogp);
			(void)FUNC8(d, newdup, needlogp);
		}
		/*
		 * Otherwise we need a scan if the new entry is big enough.
		 */
		else {
			needscan = FUNC2(newdup->length) >
				   FUNC2(d->hdr.bestfree[2].length);
		}
	}
	/*
	 * Neither neighbor is free.  Make a new entry.
	 */
	else {
		newdup = (xfs_dir2_data_unused_t *)((char *)d + offset);
		newdup->freetag = FUNC4(XFS_DIR2_DATA_FREE_TAG);
		newdup->length = FUNC4(len);
		*FUNC11(newdup) =
			FUNC4((char *)newdup - (char *)d);
		FUNC10(tp, bp, newdup);
		(void)FUNC8(d, newdup, needlogp);
	}
	*needscanp = needscan;
}