#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  TYPE_6__ xfs_dir2_data_entry_t ;
struct TYPE_21__ {int index; TYPE_14__* bp; } ;
struct TYPE_20__ {int active; TYPE_3__* blk; } ;
struct TYPE_23__ {TYPE_5__ extrablk; scalar_t__ extravalid; TYPE_4__ path; TYPE_2__* mp; int /*<<< orphan*/  node_ents; int /*<<< orphan*/  blocksize; TYPE_8__* args; } ;
typedef  TYPE_7__ xfs_da_state_t ;
struct TYPE_24__ {scalar_t__ cmpresult; int /*<<< orphan*/  trans; TYPE_1__* dp; } ;
typedef  TYPE_8__ xfs_da_args_t ;
struct TYPE_19__ {TYPE_14__* bp; } ;
struct TYPE_18__ {int /*<<< orphan*/  m_dir_node_ents; int /*<<< orphan*/  m_dirblksize; } ;
struct TYPE_17__ {TYPE_2__* i_mount; } ;
struct TYPE_16__ {scalar_t__ data; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ XFS_CMP_CASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_14__*) ; 
 int FUNC2 (TYPE_7__*,int*) ; 
 TYPE_7__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int						/* error */
FUNC6(
	xfs_da_args_t	*args)			/* operation arguments */
{
	int		error;			/* error return value */
	int		i;			/* btree level */
	int		rval;			/* operation return value */
	xfs_da_state_t	*state;			/* btree cursor */

	FUNC0(args);

	/*
	 * Allocate and initialize the btree cursor.
	 */
	state = FUNC3();
	state->args = args;
	state->mp = args->dp->i_mount;
	state->blocksize = state->mp->m_dirblksize;
	state->node_ents = state->mp->m_dir_node_ents;
	/*
	 * Fill in the path to the entry in the cursor.
	 */
	error = FUNC2(state, &rval);
	if (error)
		rval = error;
	else if (rval == ENOENT && args->cmpresult == XFS_CMP_CASE) {
		/* If a CI match, dup the actual name and return EEXIST */
		xfs_dir2_data_entry_t	*dep;

		dep = (xfs_dir2_data_entry_t *)((char *)state->extrablk.bp->
						data + state->extrablk.index);
		rval = FUNC5(args, dep->name, dep->namelen);
	}
	/*
	 * Release the btree blocks and leaf block.
	 */
	for (i = 0; i < state->path.active; i++) {
		FUNC1(args->trans, state->path.blk[i].bp);
		state->path.blk[i].bp = NULL;
	}
	/*
	 * Release the data block if we have it.
	 */
	if (state->extravalid && state->extrablk.bp) {
		FUNC1(args->trans, state->extrablk.bp);
		state->extrablk.bp = NULL;
	}
	FUNC4(state);
	return rval;
}