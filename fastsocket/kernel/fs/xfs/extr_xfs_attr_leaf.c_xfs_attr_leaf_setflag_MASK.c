#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_5__* data; } ;
typedef  TYPE_3__ xfs_dabuf_t ;
struct TYPE_20__ {scalar_t__ index; int /*<<< orphan*/  dp; int /*<<< orphan*/  trans; int /*<<< orphan*/  blkno; } ;
typedef  TYPE_4__ xfs_da_args_t ;
struct TYPE_17__ {int /*<<< orphan*/  magic; } ;
struct TYPE_18__ {int /*<<< orphan*/  count; TYPE_1__ info; } ;
struct TYPE_21__ {TYPE_6__* entries; TYPE_2__ hdr; } ;
typedef  TYPE_5__ xfs_attr_leafblock_t ;
struct TYPE_22__ {int flags; scalar_t__ valuelen; scalar_t__ valueblk; } ;
typedef  TYPE_6__ xfs_attr_leaf_name_remote_t ;
typedef  TYPE_6__ xfs_attr_leaf_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int XFS_ATTR_INCOMPLETE ; 
 scalar_t__ XFS_ATTR_LEAF_MAGIC ; 
 int XFS_ATTR_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_6__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_6__* FUNC4 (TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(xfs_da_args_t *args)
{
	xfs_attr_leafblock_t *leaf;
	xfs_attr_leaf_entry_t *entry;
	xfs_attr_leaf_name_remote_t *name_rmt;
	xfs_dabuf_t *bp;
	int error;

	FUNC3(args);

	/*
	 * Set up the operation.
	 */
	error = FUNC7(args->trans, args->dp, args->blkno, -1, &bp,
					     XFS_ATTR_FORK);
	if (error) {
		return(error);
	}
	FUNC0(bp != NULL);

	leaf = bp->data;
	FUNC0(FUNC2(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
	FUNC0(args->index < FUNC2(leaf->hdr.count));
	FUNC0(args->index >= 0);
	entry = &leaf->entries[ args->index ];

	FUNC0((entry->flags & XFS_ATTR_INCOMPLETE) == 0);
	entry->flags |= XFS_ATTR_INCOMPLETE;
	FUNC6(args->trans, bp,
			FUNC1(leaf, entry, sizeof(*entry)));
	if ((entry->flags & XFS_ATTR_LOCAL) == 0) {
		name_rmt = FUNC4(leaf, args->index);
		name_rmt->valueblk = 0;
		name_rmt->valuelen = 0;
		FUNC6(args->trans, bp,
			 FUNC1(leaf, name_rmt, sizeof(*name_rmt)));
	}
	FUNC5(bp);

	/*
	 * Commit the flag value change and start the next trans in series.
	 */
	return FUNC8(&args->trans, args->dp);
}