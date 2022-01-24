#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_14__ ;
typedef  struct TYPE_23__   TYPE_13__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ xfs_ino_t ;
struct TYPE_26__ {int /*<<< orphan*/  magic; } ;
struct TYPE_29__ {TYPE_2__ hdr; TYPE_6__* ents; } ;
typedef  TYPE_5__ xfs_dir2_leaf_t ;
struct TYPE_30__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_6__ xfs_dir2_leaf_entry_t ;
typedef  TYPE_5__ xfs_dir2_data_t ;
struct TYPE_31__ {int /*<<< orphan*/  inumber; } ;
typedef  TYPE_8__ xfs_dir2_data_entry_t ;
struct TYPE_28__ {int active; TYPE_10__* blk; } ;
struct TYPE_27__ {TYPE_14__* bp; } ;
struct TYPE_32__ {int extravalid; TYPE_4__ path; TYPE_3__ extrablk; TYPE_13__* mp; int /*<<< orphan*/  node_ents; int /*<<< orphan*/  blocksize; TYPE_11__* args; } ;
typedef  TYPE_9__ xfs_da_state_t ;
struct TYPE_21__ {scalar_t__ magic; size_t index; TYPE_14__* bp; } ;
typedef  TYPE_10__ xfs_da_state_blk_t ;
struct TYPE_22__ {scalar_t__ inumber; int /*<<< orphan*/  trans; TYPE_1__* dp; } ;
typedef  TYPE_11__ xfs_da_args_t ;
struct TYPE_25__ {TYPE_13__* i_mount; } ;
struct TYPE_24__ {TYPE_5__* data; } ;
struct TYPE_23__ {int /*<<< orphan*/  m_dir_node_ents; int /*<<< orphan*/  m_dirblksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 scalar_t__ XFS_DIR2_DATA_MAGIC ; 
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_14__*) ; 
 int FUNC6 (TYPE_9__*,int*) ; 
 TYPE_9__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_14__*,TYPE_8__*) ; 
 int FUNC10 (TYPE_13__*,scalar_t__) ; 

int						/* error */
FUNC11(
	xfs_da_args_t		*args)		/* operation arguments */
{
	xfs_da_state_blk_t	*blk;		/* leaf block */
	xfs_dir2_data_t		*data;		/* data block structure */
	xfs_dir2_data_entry_t	*dep;		/* data entry changed */
	int			error;		/* error return value */
	int			i;		/* btree level */
	xfs_ino_t		inum;		/* new inode number */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_entry_t	*lep;		/* leaf entry being changed */
	int			rval;		/* internal return value */
	xfs_da_state_t		*state;		/* btree cursor */

	FUNC4(args);

	/*
	 * Allocate and initialize the btree cursor.
	 */
	state = FUNC7();
	state->args = args;
	state->mp = args->dp->i_mount;
	state->blocksize = state->mp->m_dirblksize;
	state->node_ents = state->mp->m_dir_node_ents;
	inum = args->inumber;
	/*
	 * Lookup the entry to change in the btree.
	 */
	error = FUNC6(state, &rval);
	if (error) {
		rval = error;
	}
	/*
	 * It should be found, since the vnodeops layer has looked it up
	 * and locked it.  But paranoia is good.
	 */
	if (rval == EEXIST) {
		/*
		 * Find the leaf entry.
		 */
		blk = &state->path.blk[state->path.active - 1];
		FUNC0(blk->magic == XFS_DIR2_LEAFN_MAGIC);
		leaf = blk->bp->data;
		lep = &leaf->ents[blk->index];
		FUNC0(state->extravalid);
		/*
		 * Point to the data entry.
		 */
		data = state->extrablk.bp->data;
		FUNC0(FUNC1(data->hdr.magic) == XFS_DIR2_DATA_MAGIC);
		dep = (xfs_dir2_data_entry_t *)
		      ((char *)data +
		       FUNC10(state->mp, FUNC1(lep->address)));
		FUNC0(inum != FUNC2(dep->inumber));
		/*
		 * Fill in the new inode number and log the entry.
		 */
		dep->inumber = FUNC3(inum);
		FUNC9(args->trans, state->extrablk.bp, dep);
		rval = 0;
	}
	/*
	 * Didn't find it, and we're holding a data block.  Drop it.
	 */
	else if (state->extravalid) {
		FUNC5(args->trans, state->extrablk.bp);
		state->extrablk.bp = NULL;
	}
	/*
	 * Release all the buffers in the cursor.
	 */
	for (i = 0; i < state->path.active; i++) {
		FUNC5(args->trans, state->path.blk[i].bp);
		state->path.blk[i].bp = NULL;
	}
	FUNC8(state);
	return rval;
}