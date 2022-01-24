#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_daddr_t ;
struct TYPE_10__ {TYPE_2__* data; } ;
typedef  TYPE_1__ xfs_dabuf_t ;
struct TYPE_11__ {int /*<<< orphan*/  magic; } ;
typedef  TYPE_2__ xfs_da_blkinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 scalar_t__ XFS_ATTR_LEAF_MAGIC ; 
 scalar_t__ XFS_DA_NODE_MAGIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int
FUNC10(xfs_trans_t **trans, xfs_inode_t *dp)
{
	xfs_da_blkinfo_t *info;
	xfs_daddr_t blkno;
	xfs_dabuf_t *bp;
	int error;

	/*
	 * Read block 0 to see what we have to work with.
	 * We only get here if we have extents, since we remove
	 * the extents in reverse order the extent containing
	 * block 0 must still be there.
	 */
	error = FUNC8(*trans, dp, 0, -1, &bp, XFS_ATTR_FORK);
	if (error)
		return(error);
	blkno = FUNC5(bp);

	/*
	 * Invalidate the tree, even if the "tree" is only a single leaf block.
	 * This is a depth-first traversal!
	 */
	info = bp->data;
	if (FUNC1(info->magic) == XFS_DA_NODE_MAGIC) {
		error = FUNC3(trans, dp, bp, 1);
	} else if (FUNC1(info->magic) == XFS_ATTR_LEAF_MAGIC) {
		error = FUNC2(trans, dp, bp);
	} else {
		error = FUNC0(EIO);
		FUNC6(*trans, bp);
	}
	if (error)
		return(error);

	/*
	 * Invalidate the incore copy of the root block.
	 */
	error = FUNC7(*trans, dp, 0, blkno, &bp, XFS_ATTR_FORK);
	if (error)
		return(error);
	FUNC4(*trans, bp);	/* remove from cache */
	/*
	 * Commit the invalidate and start the next transaction.
	 */
	error = FUNC9(trans, dp);

	return (error);
}