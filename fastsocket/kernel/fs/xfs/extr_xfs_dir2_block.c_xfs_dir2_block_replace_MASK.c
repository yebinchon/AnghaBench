#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_16__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct TYPE_17__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_2__ xfs_dir2_leaf_entry_t ;
struct TYPE_18__ {int /*<<< orphan*/  inumber; } ;
typedef  TYPE_3__ xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_tail_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_t ;
struct TYPE_19__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ xfs_dabuf_t ;
struct TYPE_20__ {scalar_t__ inumber; int /*<<< orphan*/  trans; TYPE_1__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_5__*,TYPE_4__**,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int						/* error */
FUNC12(
	xfs_da_args_t		*args)		/* directory operation args */
{
	xfs_dir2_block_t	*block;		/* block structure */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf entries */
	xfs_dabuf_t		*bp;		/* block buffer */
	xfs_dir2_block_tail_t	*btp;		/* block tail */
	xfs_dir2_data_entry_t	*dep;		/* block data entry */
	xfs_inode_t		*dp;		/* incore inode */
	int			ent;		/* leaf entry index */
	int			error;		/* error return value */
	xfs_mount_t		*mp;		/* filesystem mount point */

	FUNC4(args);

	/*
	 * Lookup the entry in the directory.  Get buffer and entry index.
	 * This will always succeed since the caller has already done a lookup.
	 */
	if ((error = FUNC7(args, &bp, &ent))) {
		return error;
	}
	dp = args->dp;
	mp = dp->i_mount;
	block = bp->data;
	btp = FUNC8(mp, block);
	blp = FUNC6(btp);
	/*
	 * Point to the data entry we need to change.
	 */
	dep = (xfs_dir2_data_entry_t *)
	      ((char *)block + FUNC11(mp, FUNC1(blp[ent].address)));
	FUNC0(FUNC2(dep->inumber) != args->inumber);
	/*
	 * Change the inode number to the new value.
	 */
	dep->inumber = FUNC3(args->inumber);
	FUNC10(args->trans, bp, dep);
	FUNC9(dp, bp);
	FUNC5(bp);
	return 0;
}