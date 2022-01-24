#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_4__* data; } ;
typedef  TYPE_1__ xfs_dabuf_t ;
struct TYPE_21__ {TYPE_5__* args; } ;
typedef  TYPE_2__ xfs_da_state_t ;
struct TYPE_22__ {scalar_t__ magic; scalar_t__ blkno; TYPE_1__* bp; } ;
typedef  TYPE_3__ xfs_da_state_blk_t ;
struct TYPE_23__ {scalar_t__ magic; void* forw; void* back; } ;
typedef  TYPE_4__ xfs_da_blkinfo_t ;
struct TYPE_24__ {int /*<<< orphan*/  trans; int /*<<< orphan*/  whichfork; int /*<<< orphan*/  dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  XFS_ATTR_LEAF_MAGIC 130 
#define  XFS_DA_NODE_MAGIC 129 
#define  XFS_DIR2_LEAFN_MAGIC 128 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,TYPE_1__*) ; 

int							/* error */
FUNC12(xfs_da_state_t *state, xfs_da_state_blk_t *old_blk,
			       xfs_da_state_blk_t *new_blk)
{
	xfs_da_blkinfo_t *old_info, *new_info, *tmp_info;
	xfs_da_args_t *args;
	int before=0, error;
	xfs_dabuf_t *bp;

	/*
	 * Set up environment.
	 */
	args = state->args;
	FUNC0(args != NULL);
	old_info = old_blk->bp->data;
	new_info = new_blk->bp->data;
	FUNC0(old_blk->magic == XFS_DA_NODE_MAGIC ||
	       old_blk->magic == XFS_DIR2_LEAFN_MAGIC ||
	       old_blk->magic == XFS_ATTR_LEAF_MAGIC);
	FUNC0(old_blk->magic == FUNC1(old_info->magic));
	FUNC0(new_blk->magic == FUNC1(new_info->magic));
	FUNC0(old_blk->magic == new_blk->magic);

	switch (old_blk->magic) {
	case XFS_ATTR_LEAF_MAGIC:
		before = FUNC6(old_blk->bp, new_blk->bp);
		break;
	case XFS_DIR2_LEAFN_MAGIC:
		before = FUNC11(old_blk->bp, new_blk->bp);
		break;
	case XFS_DA_NODE_MAGIC:
		before = FUNC9(old_blk->bp, new_blk->bp);
		break;
	}

	/*
	 * Link blocks in appropriate order.
	 */
	if (before) {
		/*
		 * Link new block in before existing block.
		 */
		FUNC5(args);
		new_info->forw = FUNC3(old_blk->blkno);
		new_info->back = old_info->back;
		if (old_info->back) {
			error = FUNC10(args->trans, args->dp,
						FUNC2(old_info->back),
						-1, &bp, args->whichfork);
			if (error)
				return(error);
			FUNC0(bp != NULL);
			tmp_info = bp->data;
			FUNC0(FUNC1(tmp_info->magic) == FUNC1(old_info->magic));
			FUNC0(FUNC2(tmp_info->forw) == old_blk->blkno);
			tmp_info->forw = FUNC3(new_blk->blkno);
			FUNC8(args->trans, bp, 0, sizeof(*tmp_info)-1);
			FUNC7(bp);
		}
		old_info->back = FUNC3(new_blk->blkno);
	} else {
		/*
		 * Link new block in after existing block.
		 */
		FUNC4(args);
		new_info->forw = old_info->forw;
		new_info->back = FUNC3(old_blk->blkno);
		if (old_info->forw) {
			error = FUNC10(args->trans, args->dp,
						FUNC2(old_info->forw),
						-1, &bp, args->whichfork);
			if (error)
				return(error);
			FUNC0(bp != NULL);
			tmp_info = bp->data;
			FUNC0(tmp_info->magic == old_info->magic);
			FUNC0(FUNC2(tmp_info->back) == old_blk->blkno);
			tmp_info->back = FUNC3(new_blk->blkno);
			FUNC8(args->trans, bp, 0, sizeof(*tmp_info)-1);
			FUNC7(bp);
		}
		old_info->forw = FUNC3(new_blk->blkno);
	}

	FUNC8(args->trans, old_blk->bp, 0, sizeof(*tmp_info) - 1);
	FUNC8(args->trans, new_blk->bp, 0, sizeof(*tmp_info) - 1);
	return(0);
}