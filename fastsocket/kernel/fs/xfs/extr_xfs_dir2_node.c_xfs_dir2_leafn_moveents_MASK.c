#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_17__ {int count; int stale; } ;
struct TYPE_18__ {TYPE_1__ hdr; TYPE_12__* ents; } ;
typedef  TYPE_2__ xfs_dir2_leaf_t ;
typedef  int /*<<< orphan*/  xfs_dir2_leaf_entry_t ;
struct TYPE_19__ {TYPE_2__* data; } ;
typedef  TYPE_3__ xfs_dabuf_t ;
struct TYPE_20__ {int /*<<< orphan*/  dp; int /*<<< orphan*/ * trans; } ;
typedef  TYPE_4__ xfs_da_args_t ;
struct TYPE_16__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 scalar_t__ XFS_DIR2_NULL_DATAPTR ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*,TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_12__*,TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC9(
	xfs_da_args_t	*args,			/* operation arguments */
	xfs_dabuf_t	*bp_s,			/* source leaf buffer */
	int		start_s,		/* source leaf index */
	xfs_dabuf_t	*bp_d,			/* destination leaf buffer */
	int		start_d,		/* destination leaf index */
	int		count)			/* count of leaves to copy */
{
	xfs_dir2_leaf_t	*leaf_d;		/* destination leaf structure */
	xfs_dir2_leaf_t	*leaf_s;		/* source leaf structure */
	int		stale;			/* count stale leaves copied */
	xfs_trans_t	*tp;			/* transaction pointer */

	FUNC5(args, start_s, start_d, count);

	/*
	 * Silently return if nothing to do.
	 */
	if (count == 0) {
		return;
	}
	tp = args->trans;
	leaf_s = bp_s->data;
	leaf_d = bp_d->data;
	/*
	 * If the destination index is not the end of the current
	 * destination leaf entries, open up a hole in the destination
	 * to hold the new entries.
	 */
	if (start_d < FUNC1(leaf_d->hdr.count)) {
		FUNC4(&leaf_d->ents[start_d + count], &leaf_d->ents[start_d],
			(FUNC1(leaf_d->hdr.count) - start_d) *
			sizeof(xfs_dir2_leaf_entry_t));
		FUNC6(tp, bp_d, start_d + count,
			count + FUNC1(leaf_d->hdr.count) - 1);
	}
	/*
	 * If the source has stale leaves, count the ones in the copy range
	 * so we can update the header correctly.
	 */
	if (leaf_s->hdr.stale) {
		int	i;			/* temp leaf index */

		for (i = start_s, stale = 0; i < start_s + count; i++) {
			if (FUNC2(leaf_s->ents[i].address) == XFS_DIR2_NULL_DATAPTR)
				stale++;
		}
	} else
		stale = 0;
	/*
	 * Copy the leaf entries from source to destination.
	 */
	FUNC3(&leaf_d->ents[start_d], &leaf_s->ents[start_s],
		count * sizeof(xfs_dir2_leaf_entry_t));
	FUNC6(tp, bp_d, start_d, start_d + count - 1);
	/*
	 * If there are source entries after the ones we copied,
	 * delete the ones we copied by sliding the next ones down.
	 */
	if (start_s + count < FUNC1(leaf_s->hdr.count)) {
		FUNC4(&leaf_s->ents[start_s], &leaf_s->ents[start_s + count],
			count * sizeof(xfs_dir2_leaf_entry_t));
		FUNC6(tp, bp_s, start_s, start_s + count - 1);
	}
	/*
	 * Update the headers and log them.
	 */
	FUNC0(&leaf_s->hdr.count, -(count));
	FUNC0(&leaf_s->hdr.stale, -(stale));
	FUNC0(&leaf_d->hdr.count, count);
	FUNC0(&leaf_d->hdr.stale, stale);
	FUNC7(tp, bp_s);
	FUNC7(tp, bp_d);
	FUNC8(args->dp, bp_s);
	FUNC8(args->dp, bp_d);
}