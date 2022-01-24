#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_5__ xfs_inode_t ;
struct TYPE_28__ {TYPE_7__* data; } ;
typedef  TYPE_6__ xfs_dabuf_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_23__ {int /*<<< orphan*/  magic; } ;
struct TYPE_26__ {int /*<<< orphan*/  count; TYPE_1__ info; } ;
struct TYPE_29__ {TYPE_4__ hdr; TYPE_3__* btree; TYPE_2__* entries; } ;
typedef  TYPE_7__ xfs_da_intnode_t ;
struct TYPE_30__ {int /*<<< orphan*/  trans; TYPE_5__* dp; } ;
typedef  TYPE_8__ xfs_da_args_t ;
typedef  TYPE_7__ xfs_attr_leafblock_t ;
struct TYPE_25__ {int /*<<< orphan*/  before; int /*<<< orphan*/  hashval; } ;
struct TYPE_24__ {int /*<<< orphan*/  hashval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int XFS_ATTR_LEAF_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int,TYPE_6__**,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC11 (TYPE_8__*,int /*<<< orphan*/ ,int,TYPE_6__**,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int,TYPE_6__**,int /*<<< orphan*/ ) ; 

int
FUNC13(xfs_da_args_t *args)
{
	xfs_attr_leafblock_t *leaf;
	xfs_da_intnode_t *node;
	xfs_inode_t *dp;
	xfs_dabuf_t *bp1, *bp2;
	xfs_dablk_t blkno;
	int error;

	FUNC6(args);

	dp = args->dp;
	bp1 = bp2 = NULL;
	error = FUNC9(args, &blkno);
	if (error)
		goto out;
	error = FUNC12(args->trans, args->dp, 0, -1, &bp1,
					     XFS_ATTR_FORK);
	if (error)
		goto out;
	FUNC0(bp1 != NULL);
	bp2 = NULL;
	error = FUNC8(args->trans, args->dp, blkno, -1, &bp2,
					    XFS_ATTR_FORK);
	if (error)
		goto out;
	FUNC0(bp2 != NULL);
	FUNC5(bp2->data, bp1->data, FUNC1(dp->i_mount));
	FUNC7(bp1);
	bp1 = NULL;
	FUNC10(args->trans, bp2, 0, FUNC1(dp->i_mount) - 1);

	/*
	 * Set up the new root node.
	 */
	error = FUNC11(args, 0, 1, &bp1, XFS_ATTR_FORK);
	if (error)
		goto out;
	node = bp1->data;
	leaf = bp2->data;
	FUNC0(FUNC2(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
	/* both on-disk, don't endian-flip twice */
	node->btree[0].hashval =
		leaf->entries[FUNC2(leaf->hdr.count)-1 ].hashval;
	node->btree[0].before = FUNC4(blkno);
	node->hdr.count = FUNC3(1);
	FUNC10(args->trans, bp1, 0, FUNC1(dp->i_mount) - 1);
	error = 0;
out:
	if (bp1)
		FUNC7(bp1);
	if (bp2)
		FUNC7(bp2);
	return(error);
}