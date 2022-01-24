#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_14__ {TYPE_3__* data; } ;
typedef  TYPE_2__ xfs_dabuf_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_13__ {scalar_t__ pad; void* magic; scalar_t__ back; scalar_t__ forw; } ;
struct TYPE_12__ {void* level; scalar_t__ count; TYPE_1__ info; } ;
struct TYPE_15__ {TYPE_11__ hdr; } ;
typedef  TYPE_3__ xfs_da_intnode_t ;
struct TYPE_16__ {int /*<<< orphan*/  dp; int /*<<< orphan*/ * trans; } ;
typedef  TYPE_4__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_11__*,int) ; 
 int XFS_DA_NODE_MAGIC ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

int
FUNC6(xfs_da_args_t *args, xfs_dablk_t blkno, int level,
				 xfs_dabuf_t **bpp, int whichfork)
{
	xfs_da_intnode_t *node;
	xfs_dabuf_t *bp;
	int error;
	xfs_trans_t *tp;

	FUNC3(args);

	tp = args->trans;
	error = FUNC4(tp, args->dp, blkno, -1, &bp, whichfork);
	if (error)
		return(error);
	FUNC0(bp != NULL);
	node = bp->data;
	node->hdr.info.forw = 0;
	node->hdr.info.back = 0;
	node->hdr.info.magic = FUNC2(XFS_DA_NODE_MAGIC);
	node->hdr.info.pad = 0;
	node->hdr.count = 0;
	node->hdr.level = FUNC2(level);

	FUNC5(tp, bp,
		FUNC1(node, &node->hdr, sizeof(node->hdr)));

	*bpp = bp;
	return(0);
}