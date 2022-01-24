#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  count; int /*<<< orphan*/  stale; } ;
struct TYPE_8__ {TYPE_2__ hdr; TYPE_1__* ents; } ;
typedef  TYPE_3__ xfs_dir2_leaf_t ;
struct TYPE_9__ {TYPE_3__* data; } ;
typedef  TYPE_4__ xfs_dabuf_t ;
struct TYPE_6__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_NULL_DATAPTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(
	xfs_dabuf_t	*bp,		/* leaf buffer */
	int		*indexp,	/* insertion index */
	int		*lowstalep,	/* out: stale entry before us */
	int		*highstalep,	/* out: stale entry after us */
	int		*lowlogp,	/* out: low log index */
	int		*highlogp)	/* out: high log index */
{
	int		from;		/* source copy index */
	int		highstale;	/* stale entry at/after index */
	int		index;		/* insertion index */
	int		keepstale;	/* source index of kept stale */
	xfs_dir2_leaf_t	*leaf;		/* leaf structure */
	int		lowstale;	/* stale entry before index */
	int		newindex=0;	/* new insertion index */
	int		to;		/* destination copy index */

	leaf = bp->data;
	FUNC0(FUNC2(leaf->hdr.stale) > 1);
	index = *indexp;
	/*
	 * Find the first stale entry before our index, if any.
	 */
	for (lowstale = index - 1;
	     lowstale >= 0 &&
		FUNC3(leaf->ents[lowstale].address) != XFS_DIR2_NULL_DATAPTR;
	     lowstale--)
		continue;
	/*
	 * Find the first stale entry at or after our index, if any.
	 * Stop if the answer would be worse than lowstale.
	 */
	for (highstale = index;
	     highstale < FUNC2(leaf->hdr.count) &&
		FUNC3(leaf->ents[highstale].address) != XFS_DIR2_NULL_DATAPTR &&
		(lowstale < 0 || index - lowstale > highstale - index);
	     highstale++)
		continue;
	/*
	 * Pick the better of lowstale and highstale.
	 */
	if (lowstale >= 0 &&
	    (highstale == FUNC2(leaf->hdr.count) ||
	     index - lowstale <= highstale - index))
		keepstale = lowstale;
	else
		keepstale = highstale;
	/*
	 * Copy the entries in place, removing all the stale entries
	 * except keepstale.
	 */
	for (from = to = 0; from < FUNC2(leaf->hdr.count); from++) {
		/*
		 * Notice the new value of index.
		 */
		if (index == from)
			newindex = to;
		if (from != keepstale &&
		    FUNC3(leaf->ents[from].address) == XFS_DIR2_NULL_DATAPTR) {
			if (from == to)
				*lowlogp = to;
			continue;
		}
		/*
		 * Record the new keepstale value for the insertion.
		 */
		if (from == keepstale)
			lowstale = highstale = to;
		/*
		 * Copy only the entries that have moved.
		 */
		if (from > to)
			leaf->ents[to] = leaf->ents[from];
		to++;
	}
	FUNC0(from > to);
	/*
	 * If the insertion point was past the last entry,
	 * set the new insertion point accordingly.
	 */
	if (index == from)
		newindex = to;
	*indexp = newindex;
	/*
	 * Adjust the leaf header values.
	 */
	FUNC1(&leaf->hdr.count, -(from - to));
	leaf->hdr.stale = FUNC4(1);
	/*
	 * Remember the low/high stale value only in the "right"
	 * direction.
	 */
	if (lowstale >= newindex)
		lowstale = -1;
	else
		highstale = FUNC2(leaf->hdr.count);
	*highlogp = FUNC2(leaf->hdr.count) - 1;
	*lowstalep = lowstale;
	*highstalep = highstale;
}