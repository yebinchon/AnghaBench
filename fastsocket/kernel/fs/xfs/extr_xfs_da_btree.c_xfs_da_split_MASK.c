#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_29__ ;
typedef  struct TYPE_32__   TYPE_25__ ;
typedef  struct TYPE_31__   TYPE_20__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {TYPE_6__* data; } ;
typedef  TYPE_3__ xfs_dabuf_t ;
struct TYPE_37__ {scalar_t__ magic; scalar_t__ blkno; TYPE_3__* bp; } ;
struct TYPE_31__ {int active; TYPE_5__* blk; } ;
struct TYPE_30__ {TYPE_5__* blk; } ;
struct TYPE_36__ {int extravalid; int extraafter; TYPE_25__* args; TYPE_5__ extrablk; TYPE_20__ path; int /*<<< orphan*/  inleaf; TYPE_1__ altpath; } ;
typedef  TYPE_4__ xfs_da_state_t ;
typedef  TYPE_5__ xfs_da_state_blk_t ;
struct TYPE_33__ {void* forw; void* back; } ;
struct TYPE_34__ {TYPE_29__ info; } ;
struct TYPE_38__ {TYPE_2__ hdr; } ;
typedef  TYPE_6__ xfs_da_intnode_t ;
struct TYPE_32__ {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
#define  XFS_ATTR_LEAF_MAGIC 130 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_29__*,int) ; 
#define  XFS_DA_NODE_MAGIC 129 
 int XFS_DA_NODE_MAXDEPTH ; 
#define  XFS_DIR2_LEAFN_MAGIC 128 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_25__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_25__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_25__*) ; 
 int FUNC7 (TYPE_4__*,TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,int,int*) ; 
 int FUNC12 (TYPE_4__*,TYPE_5__*,TYPE_5__*) ; 
 int FUNC13 (TYPE_4__*,TYPE_5__*,TYPE_5__*) ; 

int							/* error */
FUNC14(xfs_da_state_t *state)
{
	xfs_da_state_blk_t *oldblk, *newblk, *addblk;
	xfs_da_intnode_t *node;
	xfs_dabuf_t *bp;
	int max, action, error, i;

	FUNC6(state->args);

	/*
	 * Walk back up the tree splitting/inserting/adjusting as necessary.
	 * If we need to insert and there isn't room, split the node, then
	 * decide which fragment to insert the new block from below into.
	 * Note that we may split the root this way, but we need more fixup.
	 */
	max = state->path.active - 1;
	FUNC0((max >= 0) && (max < XFS_DA_NODE_MAXDEPTH));
	FUNC0(state->path.blk[max].magic == XFS_ATTR_LEAF_MAGIC ||
	       state->path.blk[max].magic == XFS_DIR2_LEAFN_MAGIC);

	addblk = &state->path.blk[max];		/* initial dummy value */
	for (i = max; (i >= 0) && addblk; state->path.active--, i--) {
		oldblk = &state->path.blk[i];
		newblk = &state->altpath.blk[i];

		/*
		 * If a leaf node then
		 *     Allocate a new leaf node, then rebalance across them.
		 * else if an intermediate node then
		 *     We split on the last layer, must we split the node?
		 */
		switch (oldblk->magic) {
		case XFS_ATTR_LEAF_MAGIC:
			error = FUNC7(state, oldblk, newblk);
			if ((error != 0) && (error != ENOSPC)) {
				return(error);	/* GROT: attr is inconsistent */
			}
			if (!error) {
				addblk = newblk;
				break;
			}
			/*
			 * Entry wouldn't fit, split the leaf again.
			 */
			state->extravalid = 1;
			if (state->inleaf) {
				state->extraafter = 0;	/* before newblk */
				FUNC5(state->args);
				error = FUNC7(state, oldblk,
							    &state->extrablk);
			} else {
				state->extraafter = 1;	/* after newblk */
				FUNC4(state->args);
				error = FUNC7(state, newblk,
							    &state->extrablk);
			}
			if (error)
				return(error);	/* GROT: attr inconsistent */
			addblk = newblk;
			break;
		case XFS_DIR2_LEAFN_MAGIC:
			error = FUNC13(state, oldblk, newblk);
			if (error)
				return error;
			addblk = newblk;
			break;
		case XFS_DA_NODE_MAGIC:
			error = FUNC11(state, oldblk, newblk, addblk,
							 max - i, &action);
			FUNC8(addblk->bp);
			addblk->bp = NULL;
			if (error)
				return(error);	/* GROT: dir is inconsistent */
			/*
			 * Record the newly split block for the next time thru?
			 */
			if (action)
				addblk = newblk;
			else
				addblk = NULL;
			break;
		}

		/*
		 * Update the btree to show the new hashval for this child.
		 */
		FUNC9(state, &state->path);
		/*
		 * If we won't need this block again, it's getting dropped
		 * from the active path by the loop control, so we need
		 * to mark it done now.
		 */
		if (i > 0 || !addblk)
			FUNC8(oldblk->bp);
	}
	if (!addblk)
		return(0);

	/*
	 * Split the root node.
	 */
	FUNC0(state->path.active == 0);
	oldblk = &state->path.blk[0];
	error = FUNC12(state, oldblk, addblk);
	if (error) {
		FUNC8(oldblk->bp);
		FUNC8(addblk->bp);
		addblk->bp = NULL;
		return(error);	/* GROT: dir is inconsistent */
	}

	/*
	 * Update pointers to the node which used to be block 0 and
	 * just got bumped because of the addition of a new root node.
	 * There might be three blocks involved if a double split occurred,
	 * and the original block 0 could be at any position in the list.
	 */

	node = oldblk->bp->data;
	if (node->hdr.info.forw) {
		if (FUNC2(node->hdr.info.forw) == addblk->blkno) {
			bp = addblk->bp;
		} else {
			FUNC0(state->extravalid);
			bp = state->extrablk.bp;
		}
		node = bp->data;
		node->hdr.info.back = FUNC3(oldblk->blkno);
		FUNC10(state->args->trans, bp,
		    FUNC1(node, &node->hdr.info,
		    sizeof(node->hdr.info)));
	}
	node = oldblk->bp->data;
	if (node->hdr.info.back) {
		if (FUNC2(node->hdr.info.back) == addblk->blkno) {
			bp = addblk->bp;
		} else {
			FUNC0(state->extravalid);
			bp = state->extrablk.bp;
		}
		node = bp->data;
		node->hdr.info.forw = FUNC3(oldblk->blkno);
		FUNC10(state->args->trans, bp,
		    FUNC1(node, &node->hdr.info,
		    sizeof(node->hdr.info)));
	}
	FUNC8(oldblk->bp);
	FUNC8(addblk->bp);
	addblk->bp = NULL;
	return(0);
}