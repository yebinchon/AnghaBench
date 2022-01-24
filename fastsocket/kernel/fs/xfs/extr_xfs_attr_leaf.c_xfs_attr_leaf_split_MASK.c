#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_12__ {int /*<<< orphan*/  args; scalar_t__ inleaf; } ;
typedef  TYPE_1__ xfs_da_state_t ;
struct TYPE_13__ {scalar_t__ magic; int /*<<< orphan*/  bp; void* hashval; int /*<<< orphan*/  blkno; } ;
typedef  TYPE_2__ xfs_da_state_blk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_ATTR_LEAF_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC10(xfs_da_state_t *state, xfs_da_state_blk_t *oldblk,
				   xfs_da_state_blk_t *newblk)
{
	xfs_dablk_t blkno;
	int error;

	FUNC3(state->args);

	/*
	 * Allocate space for a new leaf node.
	 */
	FUNC0(oldblk->magic == XFS_ATTR_LEAF_MAGIC);
	error = FUNC9(state->args, &blkno);
	if (error)
		return(error);
	error = FUNC5(state->args, blkno, &newblk->bp);
	if (error)
		return(error);
	newblk->blkno = blkno;
	newblk->magic = XFS_ATTR_LEAF_MAGIC;

	/*
	 * Rebalance the entries across the two leaves.
	 * NOTE: rebalance() currently depends on the 2nd block being empty.
	 */
	FUNC7(state, oldblk, newblk);
	error = FUNC8(state, oldblk, newblk);
	if (error)
		return(error);

	/*
	 * Save info on "old" attribute for "atomic rename" ops, leaf_add()
	 * modifies the index/blkno/rmtblk/rmtblkcnt fields to show the
	 * "new" attrs info.  Will need the "old" info to remove it later.
	 *
	 * Insert the "new" entry in the correct block.
	 */
	if (state->inleaf) {
		FUNC2(state->args);
		error = FUNC4(oldblk->bp, state->args);
	} else {
		FUNC1(state->args);
		error = FUNC4(newblk->bp, state->args);
	}

	/*
	 * Update last hashval in each block since we added the name.
	 */
	oldblk->hashval = FUNC6(oldblk->bp, NULL);
	newblk->hashval = FUNC6(newblk->bp, NULL);
	return(error);
}