#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_5__* data; } ;
typedef  TYPE_3__ xfs_dabuf_t ;
struct TYPE_23__ {scalar_t__ index; scalar_t__ hashval; int namelen; int /*<<< orphan*/  dp; int /*<<< orphan*/  trans; scalar_t__ valuelen; scalar_t__ rmtblkno; int /*<<< orphan*/  name; int /*<<< orphan*/  blkno; } ;
typedef  TYPE_4__ xfs_da_args_t ;
struct TYPE_20__ {int /*<<< orphan*/  magic; } ;
struct TYPE_21__ {int /*<<< orphan*/  count; TYPE_1__ info; } ;
struct TYPE_24__ {TYPE_6__* entries; TYPE_2__ hdr; } ;
typedef  TYPE_5__ xfs_attr_leafblock_t ;
struct TYPE_25__ {int flags; int namelen; void* valuelen; void* valueblk; int /*<<< orphan*/  hashval; scalar_t__ name; } ;
typedef  TYPE_6__ xfs_attr_leaf_name_remote_t ;
struct TYPE_26__ {int namelen; scalar_t__ nameval; } ;
typedef  TYPE_7__ xfs_attr_leaf_name_local_t ;
typedef  TYPE_6__ xfs_attr_leaf_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int XFS_ATTR_INCOMPLETE ; 
 scalar_t__ XFS_ATTR_LEAF_MAGIC ; 
 int XFS_ATTR_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_6__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 TYPE_7__* FUNC7 (TYPE_5__*,size_t) ; 
 TYPE_6__* FUNC8 (TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC13(xfs_da_args_t *args)
{
	xfs_attr_leafblock_t *leaf;
	xfs_attr_leaf_entry_t *entry;
	xfs_attr_leaf_name_remote_t *name_rmt;
	xfs_dabuf_t *bp;
	int error;
#ifdef DEBUG
	xfs_attr_leaf_name_local_t *name_loc;
	int namelen;
	char *name;
#endif /* DEBUG */

	FUNC6(args);
	/*
	 * Set up the operation.
	 */
	error = FUNC11(args->trans, args->dp, args->blkno, -1, &bp,
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
	FUNC0(entry->flags & XFS_ATTR_INCOMPLETE);

#ifdef DEBUG
	if (entry->flags & XFS_ATTR_LOCAL) {
		name_loc = xfs_attr_leaf_name_local(leaf, args->index);
		namelen = name_loc->namelen;
		name = (char *)name_loc->nameval;
	} else {
		name_rmt = xfs_attr_leaf_name_remote(leaf, args->index);
		namelen = name_rmt->namelen;
		name = (char *)name_rmt->name;
	}
	ASSERT(be32_to_cpu(entry->hashval) == args->hashval);
	ASSERT(namelen == args->namelen);
	ASSERT(memcmp(name, args->name, namelen) == 0);
#endif /* DEBUG */

	entry->flags &= ~XFS_ATTR_INCOMPLETE;
	FUNC10(args->trans, bp,
			 FUNC1(leaf, entry, sizeof(*entry)));

	if (args->rmtblkno) {
		FUNC0((entry->flags & XFS_ATTR_LOCAL) == 0);
		name_rmt = FUNC8(leaf, args->index);
		name_rmt->valueblk = FUNC4(args->rmtblkno);
		name_rmt->valuelen = FUNC4(args->valuelen);
		FUNC10(args->trans, bp,
			 FUNC1(leaf, name_rmt, sizeof(*name_rmt)));
	}
	FUNC9(bp);

	/*
	 * Commit the flag value change and start the next trans in series.
	 */
	return FUNC12(&args->trans, args->dp);
}