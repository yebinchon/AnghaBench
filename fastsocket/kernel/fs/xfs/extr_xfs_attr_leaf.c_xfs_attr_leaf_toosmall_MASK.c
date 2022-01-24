#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_9__* data; } ;
typedef  TYPE_5__ xfs_dabuf_t ;
typedef  scalar_t__ xfs_dablk_t ;
struct TYPE_17__ {int active; TYPE_7__* blk; } ;
struct TYPE_23__ {int blocksize; TYPE_12__ path; TYPE_12__ altpath; TYPE_4__* args; } ;
typedef  TYPE_6__ xfs_da_state_t ;
struct TYPE_24__ {scalar_t__ blkno; TYPE_1__* bp; } ;
typedef  TYPE_7__ xfs_da_state_blk_t ;
struct TYPE_25__ {scalar_t__ forw; scalar_t__ back; int /*<<< orphan*/  magic; } ;
typedef  TYPE_8__ xfs_da_blkinfo_t ;
struct TYPE_19__ {int /*<<< orphan*/  magic; } ;
struct TYPE_20__ {int /*<<< orphan*/  usedbytes; int /*<<< orphan*/  count; TYPE_2__ info; } ;
struct TYPE_26__ {TYPE_3__ hdr; } ;
typedef  TYPE_9__ xfs_attr_leafblock_t ;
typedef  int /*<<< orphan*/  xfs_attr_leaf_hdr_t ;
typedef  int /*<<< orphan*/  xfs_attr_leaf_entry_t ;
struct TYPE_21__ {int /*<<< orphan*/  trans; int /*<<< orphan*/  dp; } ;
struct TYPE_18__ {TYPE_8__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int XFS_ATTR_LEAF_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*,TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC5 (TYPE_6__*,TYPE_12__*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,TYPE_5__**,int /*<<< orphan*/ ) ; 

int
FUNC7(xfs_da_state_t *state, int *action)
{
	xfs_attr_leafblock_t *leaf;
	xfs_da_state_blk_t *blk;
	xfs_da_blkinfo_t *info;
	int count, bytes, forward, error, retval, i;
	xfs_dablk_t blkno;
	xfs_dabuf_t *bp;

	/*
	 * Check for the degenerate case of the block being over 50% full.
	 * If so, it's not worth even looking to see if we might be able
	 * to coalesce with a sibling.
	 */
	blk = &state->path.blk[ state->path.active-1 ];
	info = blk->bp->data;
	FUNC0(FUNC1(info->magic) == XFS_ATTR_LEAF_MAGIC);
	leaf = (xfs_attr_leafblock_t *)info;
	count = FUNC1(leaf->hdr.count);
	bytes = sizeof(xfs_attr_leaf_hdr_t) +
		count * sizeof(xfs_attr_leaf_entry_t) +
		FUNC1(leaf->hdr.usedbytes);
	if (bytes > (state->blocksize >> 1)) {
		*action = 0;	/* blk over 50%, don't try to join */
		return(0);
	}

	/*
	 * Check for the degenerate case of the block being empty.
	 * If the block is empty, we'll simply delete it, no need to
	 * coalesce it with a sibling block.  We choose (arbitrarily)
	 * to merge with the forward block unless it is NULL.
	 */
	if (count == 0) {
		/*
		 * Make altpath point to the block we want to keep and
		 * path point to the block we want to drop (this one).
		 */
		forward = (info->forw != 0);
		FUNC3(&state->altpath, &state->path, sizeof(state->path));
		error = FUNC5(state, &state->altpath, forward,
						 0, &retval);
		if (error)
			return(error);
		if (retval) {
			*action = 0;
		} else {
			*action = 2;
		}
		return(0);
	}

	/*
	 * Examine each sibling block to see if we can coalesce with
	 * at least 25% free space to spare.  We need to figure out
	 * whether to merge with the forward or the backward block.
	 * We prefer coalescing with the lower numbered sibling so as
	 * to shrink an attribute list over time.
	 */
	/* start with smaller blk num */
	forward = (FUNC2(info->forw) < FUNC2(info->back));
	for (i = 0; i < 2; forward = !forward, i++) {
		if (forward)
			blkno = FUNC2(info->forw);
		else
			blkno = FUNC2(info->back);
		if (blkno == 0)
			continue;
		error = FUNC6(state->args->trans, state->args->dp,
					blkno, -1, &bp, XFS_ATTR_FORK);
		if (error)
			return(error);
		FUNC0(bp != NULL);

		leaf = (xfs_attr_leafblock_t *)info;
		count  = FUNC1(leaf->hdr.count);
		bytes  = state->blocksize - (state->blocksize>>2);
		bytes -= FUNC1(leaf->hdr.usedbytes);
		leaf = bp->data;
		FUNC0(FUNC1(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
		count += FUNC1(leaf->hdr.count);
		bytes -= FUNC1(leaf->hdr.usedbytes);
		bytes -= count * sizeof(xfs_attr_leaf_entry_t);
		bytes -= sizeof(xfs_attr_leaf_hdr_t);
		FUNC4(state->args->trans, bp);
		if (bytes >= 0)
			break;	/* fits with at least 25% to spare */
	}
	if (i >= 2) {
		*action = 0;
		return(0);
	}

	/*
	 * Make altpath point to the block we want to keep (the lower
	 * numbered block) and path point to the block we want to drop.
	 */
	FUNC3(&state->altpath, &state->path, sizeof(state->path));
	if (blkno < blk->blkno) {
		error = FUNC5(state, &state->altpath, forward,
						 0, &retval);
	} else {
		error = FUNC5(state, &state->path, forward,
						 0, &retval);
	}
	if (error)
		return(error);
	if (retval) {
		*action = 0;
	} else {
		*action = 1;
	}
	return(0);
}