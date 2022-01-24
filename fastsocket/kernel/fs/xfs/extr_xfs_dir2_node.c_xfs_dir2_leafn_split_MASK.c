#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_18__ {scalar_t__ inleaf; TYPE_3__* args; } ;
typedef  TYPE_1__ xfs_da_state_t ;
struct TYPE_19__ {scalar_t__ magic; int /*<<< orphan*/  bp; void* hashval; int /*<<< orphan*/  index; int /*<<< orphan*/  blkno; } ;
typedef  TYPE_2__ xfs_da_state_blk_t ;
struct TYPE_20__ {TYPE_10__* dp; } ;
typedef  TYPE_3__ xfs_da_args_t ;
struct TYPE_17__ {int /*<<< orphan*/ * i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 

int						/* error */
FUNC9(
	xfs_da_state_t		*state,		/* btree cursor */
	xfs_da_state_blk_t	*oldblk,	/* original block */
	xfs_da_state_blk_t	*newblk)	/* newly created block */
{
	xfs_da_args_t		*args;		/* operation arguments */
	xfs_dablk_t		blkno;		/* new leaf block number */
	int			error;		/* error return value */
	xfs_mount_t		*mp;		/* filesystem mount point */

	/*
	 * Allocate space for a new leaf node.
	 */
	args = state->args;
	mp = args->dp->i_mount;
	FUNC0(args != NULL);
	FUNC0(oldblk->magic == XFS_DIR2_LEAFN_MAGIC);
	error = FUNC2(args, &blkno);
	if (error) {
		return error;
	}
	/*
	 * Initialize the new leaf block.
	 */
	error = FUNC4(args, FUNC3(mp, blkno),
		&newblk->bp, XFS_DIR2_LEAFN_MAGIC);
	if (error) {
		return error;
	}
	newblk->blkno = blkno;
	newblk->magic = XFS_DIR2_LEAFN_MAGIC;
	/*
	 * Rebalance the entries across the two leaves, link the new
	 * block into the leaves.
	 */
	FUNC8(state, oldblk, newblk);
	error = FUNC1(state, oldblk, newblk);
	if (error) {
		return error;
	}
	/*
	 * Insert the new entry in the correct block.
	 */
	if (state->inleaf)
		error = FUNC5(oldblk->bp, args, oldblk->index);
	else
		error = FUNC5(newblk->bp, args, newblk->index);
	/*
	 * Update last hashval in each block since we added the name.
	 */
	oldblk->hashval = FUNC7(oldblk->bp, NULL);
	newblk->hashval = FUNC7(newblk->bp, NULL);
	FUNC6(args->dp, oldblk->bp);
	FUNC6(args->dp, newblk->bp);
	return error;
}