#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  magic; } ;
struct TYPE_22__ {int /*<<< orphan*/  count; scalar_t__ stale; TYPE_1__ info; } ;
struct TYPE_23__ {TYPE_3__ hdr; TYPE_2__* ents; } ;
typedef  TYPE_4__ xfs_dir2_leaf_t ;
struct TYPE_24__ {TYPE_7__* args; } ;
typedef  TYPE_5__ xfs_da_state_t ;
struct TYPE_25__ {scalar_t__ magic; TYPE_11__* bp; void* hashval; } ;
typedef  TYPE_6__ xfs_da_state_blk_t ;
struct TYPE_26__ {int /*<<< orphan*/  dp; } ;
typedef  TYPE_7__ xfs_da_args_t ;
struct TYPE_21__ {int /*<<< orphan*/  hashval; } ;
struct TYPE_19__ {TYPE_4__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_11__*,int /*<<< orphan*/ ,TYPE_11__*,int,int) ; 
 scalar_t__ FUNC6 (TYPE_11__*,TYPE_11__*) ; 

void
FUNC7(
	xfs_da_state_t		*state,		/* cursor */
	xfs_da_state_blk_t	*drop_blk,	/* dead block */
	xfs_da_state_blk_t	*save_blk)	/* surviving block */
{
	xfs_da_args_t		*args;		/* operation arguments */
	xfs_dir2_leaf_t		*drop_leaf;	/* dead leaf structure */
	xfs_dir2_leaf_t		*save_leaf;	/* surviving leaf structure */

	args = state->args;
	FUNC0(drop_blk->magic == XFS_DIR2_LEAFN_MAGIC);
	FUNC0(save_blk->magic == XFS_DIR2_LEAFN_MAGIC);
	drop_leaf = drop_blk->bp->data;
	save_leaf = save_blk->bp->data;
	FUNC0(FUNC1(drop_leaf->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);
	FUNC0(FUNC1(save_leaf->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);
	/*
	 * If there are any stale leaf entries, take this opportunity
	 * to purge them.
	 */
	if (drop_leaf->hdr.stale)
		FUNC3(args, drop_blk->bp);
	if (save_leaf->hdr.stale)
		FUNC3(args, save_blk->bp);
	/*
	 * Move the entries from drop to the appropriate end of save.
	 */
	drop_blk->hashval = FUNC2(drop_leaf->ents[FUNC1(drop_leaf->hdr.count) - 1].hashval);
	if (FUNC6(save_blk->bp, drop_blk->bp))
		FUNC5(args, drop_blk->bp, 0, save_blk->bp, 0,
			FUNC1(drop_leaf->hdr.count));
	else
		FUNC5(args, drop_blk->bp, 0, save_blk->bp,
			FUNC1(save_leaf->hdr.count), FUNC1(drop_leaf->hdr.count));
	save_blk->hashval = FUNC2(save_leaf->ents[FUNC1(save_leaf->hdr.count) - 1].hashval);
	FUNC4(args->dp, save_blk->bp);
}