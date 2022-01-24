#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_dahash_t ;
struct TYPE_20__ {TYPE_6__* data; } ;
typedef  TYPE_4__ xfs_dabuf_t ;
struct TYPE_21__ {scalar_t__ hashval; int index; int flags; scalar_t__ namelen; TYPE_3__* dp; int /*<<< orphan*/  rmtblkcnt; scalar_t__ rmtblkno; int /*<<< orphan*/  name; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct TYPE_17__ {int /*<<< orphan*/  magic; } ;
struct TYPE_18__ {int /*<<< orphan*/  count; TYPE_1__ info; } ;
struct TYPE_22__ {TYPE_2__ hdr; TYPE_9__* entries; } ;
typedef  TYPE_6__ xfs_attr_leafblock_t ;
struct TYPE_23__ {scalar_t__ namelen; int /*<<< orphan*/  valuelen; int /*<<< orphan*/  valueblk; scalar_t__ name; } ;
typedef  TYPE_7__ xfs_attr_leaf_name_remote_t ;
struct TYPE_24__ {scalar_t__ namelen; scalar_t__ nameval; } ;
typedef  TYPE_8__ xfs_attr_leaf_name_local_t ;
struct TYPE_25__ {int flags; int /*<<< orphan*/  hashval; } ;
typedef  TYPE_9__ xfs_attr_leaf_entry_t ;
struct TYPE_19__ {int /*<<< orphan*/  i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOATTR ; 
 int XFS_ATTR_INCOMPLETE ; 
 int XFS_ATTR_LEAF_MAGIC ; 
 int XFS_ATTR_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 TYPE_8__* FUNC8 (TYPE_6__*,int) ; 
 TYPE_7__* FUNC9 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

int
FUNC11(xfs_dabuf_t *bp, xfs_da_args_t *args)
{
	xfs_attr_leafblock_t *leaf;
	xfs_attr_leaf_entry_t *entry;
	xfs_attr_leaf_name_local_t *name_loc;
	xfs_attr_leaf_name_remote_t *name_rmt;
	int probe, span;
	xfs_dahash_t hashval;

	FUNC7(args);

	leaf = bp->data;
	FUNC0(FUNC4(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
	FUNC0(FUNC4(leaf->hdr.count)
					< (FUNC3(args->dp->i_mount)/8));

	/*
	 * Binary search.  (note: small blocks will skip this loop)
	 */
	hashval = args->hashval;
	probe = span = FUNC4(leaf->hdr.count) / 2;
	for (entry = &leaf->entries[probe]; span > 4;
		   entry = &leaf->entries[probe]) {
		span /= 2;
		if (FUNC5(entry->hashval) < hashval)
			probe += span;
		else if (FUNC5(entry->hashval) > hashval)
			probe -= span;
		else
			break;
	}
	FUNC0((probe >= 0) &&
	       (!leaf->hdr.count
	       || (probe < FUNC4(leaf->hdr.count))));
	FUNC0((span <= 4) || (FUNC5(entry->hashval) == hashval));

	/*
	 * Since we may have duplicate hashval's, find the first matching
	 * hashval in the leaf.
	 */
	while ((probe > 0) && (FUNC5(entry->hashval) >= hashval)) {
		entry--;
		probe--;
	}
	while ((probe < FUNC4(leaf->hdr.count)) &&
	       (FUNC5(entry->hashval) < hashval)) {
		entry++;
		probe++;
	}
	if ((probe == FUNC4(leaf->hdr.count)) ||
	    (FUNC5(entry->hashval) != hashval)) {
		args->index = probe;
		return(FUNC2(ENOATTR));
	}

	/*
	 * Duplicate keys may be present, so search all of them for a match.
	 */
	for (  ; (probe < FUNC4(leaf->hdr.count)) &&
			(FUNC5(entry->hashval) == hashval);
			entry++, probe++) {
/*
 * GROT: Add code to remove incomplete entries.
 */
		/*
		 * If we are looking for INCOMPLETE entries, show only those.
		 * If we are looking for complete entries, show only those.
		 */
		if ((args->flags & XFS_ATTR_INCOMPLETE) !=
		    (entry->flags & XFS_ATTR_INCOMPLETE)) {
			continue;
		}
		if (entry->flags & XFS_ATTR_LOCAL) {
			name_loc = FUNC8(leaf, probe);
			if (name_loc->namelen != args->namelen)
				continue;
			if (FUNC6(args->name, (char *)name_loc->nameval, args->namelen) != 0)
				continue;
			if (!FUNC10(args->flags, entry->flags))
				continue;
			args->index = probe;
			return(FUNC2(EEXIST));
		} else {
			name_rmt = FUNC9(leaf, probe);
			if (name_rmt->namelen != args->namelen)
				continue;
			if (FUNC6(args->name, (char *)name_rmt->name,
					     args->namelen) != 0)
				continue;
			if (!FUNC10(args->flags, entry->flags))
				continue;
			args->index = probe;
			args->rmtblkno = FUNC5(name_rmt->valueblk);
			args->rmtblkcnt = FUNC1(args->dp->i_mount,
						   FUNC5(name_rmt->valuelen));
			return(FUNC2(EEXIST));
		}
	}
	args->index = probe;
	return(FUNC2(ENOATTR));
}