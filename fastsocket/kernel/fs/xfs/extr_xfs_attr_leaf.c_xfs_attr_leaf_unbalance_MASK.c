#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_19__ {scalar_t__ blocksize; TYPE_15__* args; int /*<<< orphan*/ * mp; } ;
typedef  TYPE_3__ xfs_da_state_t ;
struct TYPE_20__ {scalar_t__ magic; void* hashval; TYPE_7__* bp; } ;
typedef  TYPE_4__ xfs_da_state_blk_t ;
struct TYPE_17__ {scalar_t__ magic; } ;
struct TYPE_22__ {scalar_t__ holes; scalar_t__ count; scalar_t__ usedbytes; void* firstused; TYPE_1__ info; } ;
struct TYPE_21__ {TYPE_6__ hdr; TYPE_2__* entries; } ;
typedef  TYPE_5__ xfs_attr_leafblock_t ;
typedef  TYPE_6__ xfs_attr_leaf_hdr_t ;
struct TYPE_23__ {TYPE_5__* data; } ;
struct TYPE_18__ {int /*<<< orphan*/  hashval; } ;
struct TYPE_16__ {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ XFS_ATTR_LEAF_MAGIC ; 
 scalar_t__ XFS_ATTR_LEAF_NAME_ALIGN ; 
 int FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_5__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_7__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(xfs_da_state_t *state, xfs_da_state_blk_t *drop_blk,
				       xfs_da_state_blk_t *save_blk)
{
	xfs_attr_leafblock_t *drop_leaf, *save_leaf, *tmp_leaf;
	xfs_attr_leaf_hdr_t *drop_hdr, *save_hdr, *tmp_hdr;
	xfs_mount_t *mp;
	char *tmpbuffer;

	FUNC8(state->args);

	/*
	 * Set up environment.
	 */
	mp = state->mp;
	FUNC0(drop_blk->magic == XFS_ATTR_LEAF_MAGIC);
	FUNC0(save_blk->magic == XFS_ATTR_LEAF_MAGIC);
	drop_leaf = drop_blk->bp->data;
	save_leaf = save_blk->bp->data;
	FUNC0(FUNC1(drop_leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
	FUNC0(FUNC1(save_leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
	drop_hdr = &drop_leaf->hdr;
	save_hdr = &save_leaf->hdr;

	/*
	 * Save last hashval from dying block for later Btree fixup.
	 */
	drop_blk->hashval = FUNC2(
		drop_leaf->entries[FUNC1(drop_leaf->hdr.count)-1].hashval);

	/*
	 * Check if we need a temp buffer, or can we do it in place.
	 * Note that we don't check "leaf" for holes because we will
	 * always be dropping it, toosmall() decided that for us already.
	 */
	if (save_hdr->holes == 0) {
		/*
		 * dest leaf has no holes, so we add there.  May need
		 * to make some room in the entry array.
		 */
		if (FUNC10(save_blk->bp, drop_blk->bp)) {
			FUNC9(drop_leaf, 0, save_leaf, 0,
			     FUNC1(drop_hdr->count), mp);
		} else {
			FUNC9(drop_leaf, 0, save_leaf,
				  FUNC1(save_hdr->count),
				  FUNC1(drop_hdr->count), mp);
		}
	} else {
		/*
		 * Destination has holes, so we make a temporary copy
		 * of the leaf and add them both to that.
		 */
		tmpbuffer = FUNC4(state->blocksize, KM_SLEEP);
		FUNC0(tmpbuffer != NULL);
		FUNC7(tmpbuffer, 0, state->blocksize);
		tmp_leaf = (xfs_attr_leafblock_t *)tmpbuffer;
		tmp_hdr = &tmp_leaf->hdr;
		tmp_hdr->info = save_hdr->info;	/* struct copy */
		tmp_hdr->count = 0;
		tmp_hdr->firstused = FUNC3(state->blocksize);
		if (!tmp_hdr->firstused) {
			tmp_hdr->firstused = FUNC3(
				state->blocksize - XFS_ATTR_LEAF_NAME_ALIGN);
		}
		tmp_hdr->usedbytes = 0;
		if (FUNC10(save_blk->bp, drop_blk->bp)) {
			FUNC9(drop_leaf, 0, tmp_leaf, 0,
				FUNC1(drop_hdr->count), mp);
			FUNC9(save_leaf, 0, tmp_leaf,
				  FUNC1(tmp_leaf->hdr.count),
				  FUNC1(save_hdr->count), mp);
		} else {
			FUNC9(save_leaf, 0, tmp_leaf, 0,
				FUNC1(save_hdr->count), mp);
			FUNC9(drop_leaf, 0, tmp_leaf,
				FUNC1(tmp_leaf->hdr.count),
				FUNC1(drop_hdr->count), mp);
		}
		FUNC6((char *)save_leaf, (char *)tmp_leaf, state->blocksize);
		FUNC5(tmpbuffer);
	}

	FUNC11(state->args->trans, save_blk->bp, 0,
					   state->blocksize - 1);

	/*
	 * Copy out last hashval in each block for B-tree code.
	 */
	save_blk->hashval = FUNC2(
		save_leaf->entries[FUNC1(save_leaf->hdr.count)-1].hashval);
}