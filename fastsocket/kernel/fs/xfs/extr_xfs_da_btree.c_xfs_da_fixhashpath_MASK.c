#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_dahash_t ;
struct TYPE_20__ {TYPE_2__* args; } ;
typedef  TYPE_4__ xfs_da_state_t ;
struct TYPE_21__ {int active; TYPE_6__* blk; } ;
typedef  TYPE_5__ xfs_da_state_path_t ;
struct TYPE_22__ {int magic; size_t index; TYPE_9__* bp; scalar_t__ hashval; } ;
typedef  TYPE_6__ xfs_da_state_blk_t ;
struct TYPE_23__ {int /*<<< orphan*/  hashval; } ;
typedef  TYPE_7__ xfs_da_node_entry_t ;
struct TYPE_17__ {int /*<<< orphan*/  magic; } ;
struct TYPE_19__ {int /*<<< orphan*/  count; TYPE_1__ info; } ;
struct TYPE_24__ {TYPE_3__ hdr; TYPE_7__* btree; } ;
typedef  TYPE_8__ xfs_da_intnode_t ;
struct TYPE_25__ {TYPE_8__* data; } ;
struct TYPE_18__ {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  XFS_ATTR_LEAF_MAGIC 130 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,TYPE_7__*,int) ; 
#define  XFS_DA_NODE_MAGIC 129 
#define  XFS_DIR2_LEAFN_MAGIC 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_9__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_9__*,int*) ; 
 scalar_t__ FUNC8 (TYPE_9__*,int*) ; 

void
FUNC9(xfs_da_state_t *state, xfs_da_state_path_t *path)
{
	xfs_da_state_blk_t *blk;
	xfs_da_intnode_t *node;
	xfs_da_node_entry_t *btree;
	xfs_dahash_t lasthash=0;
	int level, count;

	level = path->active-1;
	blk = &path->blk[ level ];
	switch (blk->magic) {
	case XFS_ATTR_LEAF_MAGIC:
		lasthash = FUNC5(blk->bp, &count);
		if (count == 0)
			return;
		break;
	case XFS_DIR2_LEAFN_MAGIC:
		lasthash = FUNC8(blk->bp, &count);
		if (count == 0)
			return;
		break;
	case XFS_DA_NODE_MAGIC:
		lasthash = FUNC7(blk->bp, &count);
		if (count == 0)
			return;
		break;
	}
	for (blk--, level--; level >= 0; blk--, level--) {
		node = blk->bp->data;
		FUNC0(FUNC2(node->hdr.info.magic) == XFS_DA_NODE_MAGIC);
		btree = &node->btree[ blk->index ];
		if (FUNC3(btree->hashval) == lasthash)
			break;
		blk->hashval = lasthash;
		btree->hashval = FUNC4(lasthash);
		FUNC6(state->args->trans, blk->bp,
				  FUNC1(node, btree, sizeof(*btree)));

		lasthash = FUNC3(node->btree[FUNC2(node->hdr.count)-1].hashval);
	}
}