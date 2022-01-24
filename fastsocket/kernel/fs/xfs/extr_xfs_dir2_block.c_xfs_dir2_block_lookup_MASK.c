#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_15__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct TYPE_16__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_2__ xfs_dir2_leaf_entry_t ;
struct TYPE_17__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  inumber; } ;
typedef  TYPE_3__ xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_tail_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_t ;
struct TYPE_18__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ xfs_dabuf_t ;
struct TYPE_19__ {int /*<<< orphan*/  trans; int /*<<< orphan*/  inumber; TYPE_1__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_5__*,TYPE_4__**,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_4__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int						/* error */
FUNC11(
	xfs_da_args_t		*args)		/* dir lookup arguments */
{
	xfs_dir2_block_t	*block;		/* block structure */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf entries */
	xfs_dabuf_t		*bp;		/* block buffer */
	xfs_dir2_block_tail_t	*btp;		/* block tail */
	xfs_dir2_data_entry_t	*dep;		/* block data entry */
	xfs_inode_t		*dp;		/* incore inode */
	int			ent;		/* entry index */
	int			error;		/* error return value */
	xfs_mount_t		*mp;		/* filesystem mount point */

	FUNC3(args);

	/*
	 * Get the buffer, look up the entry.
	 * If not found (ENOENT) then return, have no buffer.
	 */
	if ((error = FUNC6(args, &bp, &ent)))
		return error;
	dp = args->dp;
	mp = dp->i_mount;
	block = bp->data;
	FUNC8(dp, bp);
	btp = FUNC7(mp, block);
	blp = FUNC5(btp);
	/*
	 * Get the offset from the leaf entry, to point to the data.
	 */
	dep = (xfs_dir2_data_entry_t *)((char *)block +
		FUNC9(mp, FUNC1(blp[ent].address)));
	/*
	 * Fill in inode number, CI name if appropriate, release the block.
	 */
	args->inumber = FUNC2(dep->inumber);
	error = FUNC10(args, dep->name, dep->namelen);
	FUNC4(args->trans, bp);
	return FUNC0(error);
}