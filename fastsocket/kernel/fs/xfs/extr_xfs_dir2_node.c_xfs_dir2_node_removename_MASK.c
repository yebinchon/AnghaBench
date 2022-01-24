#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
struct TYPE_16__ {int active; TYPE_4__* blk; } ;
struct TYPE_19__ {int extravalid; TYPE_14__ path; int /*<<< orphan*/  extrablk; TYPE_2__* mp; int /*<<< orphan*/  node_ents; int /*<<< orphan*/  blocksize; TYPE_5__* args; } ;
typedef  TYPE_3__ xfs_da_state_t ;
struct TYPE_20__ {scalar_t__ magic; int /*<<< orphan*/  index; int /*<<< orphan*/  bp; } ;
typedef  TYPE_4__ xfs_da_state_blk_t ;
struct TYPE_21__ {TYPE_1__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct TYPE_18__ {int /*<<< orphan*/  m_dir_node_ents; int /*<<< orphan*/  m_dirblksize; } ;
struct TYPE_17__ {TYPE_2__* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_14__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int*) ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (TYPE_3__*) ; 

int						/* error */
FUNC9(
	xfs_da_args_t		*args)		/* operation arguments */
{
	xfs_da_state_blk_t	*blk;		/* leaf block */
	int			error;		/* error return value */
	int			rval;		/* operation return value */
	xfs_da_state_t		*state;		/* btree cursor */

	FUNC1(args);

	/*
	 * Allocate and initialize the btree cursor.
	 */
	state = FUNC5();
	state->args = args;
	state->mp = args->dp->i_mount;
	state->blocksize = state->mp->m_dirblksize;
	state->node_ents = state->mp->m_dir_node_ents;
	/*
	 * Look up the entry we're deleting, set up the cursor.
	 */
	error = FUNC4(state, &rval);
	if (error)
		rval = error;
	/*
	 * Didn't find it, upper layer screwed up.
	 */
	if (rval != EEXIST) {
		FUNC6(state);
		return rval;
	}
	blk = &state->path.blk[state->path.active - 1];
	FUNC0(blk->magic == XFS_DIR2_LEAFN_MAGIC);
	FUNC0(state->extravalid);
	/*
	 * Remove the leaf and data entries.
	 * Extrablk refers to the data block.
	 */
	error = FUNC7(args, blk->bp, blk->index,
		&state->extrablk, &rval);
	if (error)
		return error;
	/*
	 * Fix the hash values up the btree.
	 */
	FUNC2(state, &state->path);
	/*
	 * If we need to join leaf blocks, do it.
	 */
	if (rval && state->path.active > 1)
		error = FUNC3(state);
	/*
	 * If no errors so far, try conversion to leaf format.
	 */
	if (!error)
		error = FUNC8(state);
	FUNC6(state);
	return error;
}