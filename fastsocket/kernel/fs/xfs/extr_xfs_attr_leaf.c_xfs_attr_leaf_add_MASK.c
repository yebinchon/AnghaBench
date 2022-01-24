#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_6__* data; } ;
typedef  TYPE_4__ xfs_dabuf_t ;
struct TYPE_20__ {scalar_t__ index; TYPE_9__* trans; int /*<<< orphan*/  valuelen; int /*<<< orphan*/  namelen; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct TYPE_16__ {int /*<<< orphan*/  magic; } ;
struct TYPE_23__ {TYPE_7__* freemap; int /*<<< orphan*/  holes; int /*<<< orphan*/  firstused; int /*<<< orphan*/  count; TYPE_1__ info; } ;
struct TYPE_21__ {TYPE_8__ hdr; } ;
typedef  TYPE_6__ xfs_attr_leafblock_t ;
struct TYPE_22__ {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
typedef  TYPE_7__ xfs_attr_leaf_map_t ;
typedef  TYPE_8__ xfs_attr_leaf_hdr_t ;
typedef  int /*<<< orphan*/  xfs_attr_leaf_entry_t ;
struct TYPE_24__ {TYPE_3__* t_mountp; } ;
struct TYPE_17__ {int /*<<< orphan*/  sb_blocksize; } ;
struct TYPE_18__ {TYPE_2__ m_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int XFS_ATTR_LEAF_MAGIC ; 
 int XFS_ATTR_LEAF_MAPSIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(xfs_dabuf_t *bp, xfs_da_args_t *args)
{
	xfs_attr_leafblock_t *leaf;
	xfs_attr_leaf_hdr_t *hdr;
	xfs_attr_leaf_map_t *map;
	int tablesize, entsize, sum, tmp, i;

	FUNC3(args);

	leaf = bp->data;
	FUNC0(FUNC2(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
	FUNC0((args->index >= 0)
		&& (args->index <= FUNC2(leaf->hdr.count)));
	hdr = &leaf->hdr;
	entsize = FUNC6(args->namelen, args->valuelen,
			   args->trans->t_mountp->m_sb.sb_blocksize, NULL);

	/*
	 * Search through freemap for first-fit on new name length.
	 * (may need to figure in size of entry struct too)
	 */
	tablesize = (FUNC2(hdr->count) + 1)
					* sizeof(xfs_attr_leaf_entry_t)
					+ sizeof(xfs_attr_leaf_hdr_t);
	map = &hdr->freemap[XFS_ATTR_LEAF_MAPSIZE-1];
	for (sum = 0, i = XFS_ATTR_LEAF_MAPSIZE-1; i >= 0; map--, i--) {
		if (tablesize > FUNC2(hdr->firstused)) {
			sum += FUNC2(map->size);
			continue;
		}
		if (!map->size)
			continue;	/* no space in this map */
		tmp = entsize;
		if (FUNC2(map->base) < FUNC2(hdr->firstused))
			tmp += sizeof(xfs_attr_leaf_entry_t);
		if (FUNC2(map->size) >= tmp) {
			tmp = FUNC4(bp, args, i);
			return(tmp);
		}
		sum += FUNC2(map->size);
	}

	/*
	 * If there are no holes in the address space of the block,
	 * and we don't have enough freespace, then compaction will do us
	 * no good and we should just give up.
	 */
	if (!hdr->holes && (sum < entsize))
		return(FUNC1(ENOSPC));

	/*
	 * Compact the entries to coalesce free space.
	 * This may change the hdr->count via dropping INCOMPLETE entries.
	 */
	FUNC5(args->trans, bp);

	/*
	 * After compaction, the block is guaranteed to have only one
	 * free region, in freemap[0].  If it is not big enough, give up.
	 */
	if (FUNC2(hdr->freemap[0].size)
				< (entsize + sizeof(xfs_attr_leaf_entry_t)))
		return(FUNC1(ENOSPC));

	return(FUNC4(bp, args, 0));
}