#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {scalar_t__ i_blkbits; } ;
struct extent_map {scalar_t__ block_start; scalar_t__ len; scalar_t__ start; int /*<<< orphan*/  flags; int /*<<< orphan*/  bdev; } ;
struct buffer_head {scalar_t__ b_size; int /*<<< orphan*/  b_bdev; scalar_t__ b_blocknr; } ;
struct btrfs_trans_handle {scalar_t__ block_start; scalar_t__ len; scalar_t__ start; int /*<<< orphan*/  flags; int /*<<< orphan*/  bdev; } ;
struct btrfs_root {scalar_t__ sectorsize; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  io_tree; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATACOW ; 
 int BTRFS_ORDERED_NOCOW ; 
 int BTRFS_ORDERED_PREALLOC ; 
 int ENOTBLK ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_DIRTY ; 
 int /*<<< orphan*/  EXTENT_FLAG_COMPRESSED ; 
 int /*<<< orphan*/  EXTENT_FLAG_PREALLOC ; 
 int EXTENT_LOCKED ; 
 scalar_t__ EXTENT_MAP_HOLE ; 
 scalar_t__ EXTENT_MAP_INLINE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct extent_map*) ; 
 int FUNC2 (struct extent_map*) ; 
 int FUNC3 (struct inode*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_map*,struct btrfs_root*) ; 
 struct extent_map* FUNC5 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct extent_map* FUNC6 (struct btrfs_root*) ; 
 struct extent_map* FUNC7 (struct inode*,struct extent_map*,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct extent_map*,struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_map*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct inode *inode, sector_t iblock,
				   struct buffer_head *bh_result, int create)
{
	struct extent_map *em;
	struct btrfs_root *root = FUNC0(inode)->root;
	u64 start = iblock << inode->i_blkbits;
	u64 len = bh_result->b_size;
	struct btrfs_trans_handle *trans;

	em = FUNC5(inode, NULL, 0, start, len, 0);
	if (FUNC1(em))
		return FUNC2(em);

	/*
	 * Ok for INLINE and COMPRESSED extents we need to fallback on buffered
	 * io.  INLINE is special, and we could probably kludge it in here, but
	 * it's still buffered so for safety lets just fall back to the generic
	 * buffered path.
	 *
	 * For COMPRESSED we _have_ to read the entire extent in so we can
	 * decompress it, so there will be buffering required no matter what we
	 * do, so go ahead and fallback to buffered.
	 *
	 * We return -ENOTBLK because thats what makes DIO go ahead and go back
	 * to buffered IO.  Don't blame me, this is the price we pay for using
	 * the generic code.
	 */
	if (FUNC16(EXTENT_FLAG_COMPRESSED, &em->flags) ||
	    em->block_start == EXTENT_MAP_INLINE) {
		FUNC10(em);
		return -ENOTBLK;
	}

	/* Just a good old fashioned hole, return */
	if (!create && (em->block_start == EXTENT_MAP_HOLE ||
			FUNC16(EXTENT_FLAG_PREALLOC, &em->flags))) {
		FUNC10(em);
		/* DIO will do one hole at a time, so just unlock a sector */
		FUNC17(&FUNC0(inode)->io_tree, start,
			      start + root->sectorsize - 1);
		return 0;
	}

	/*
	 * We don't allocate a new extent in the following cases
	 *
	 * 1) The inode is marked as NODATACOW.  In this case we'll just use the
	 * existing extent.
	 * 2) The extent is marked as PREALLOC.  We're good to go here and can
	 * just use the extent.
	 *
	 */
	if (!create) {
		len = em->len - (start - em->start);
		goto map;
	}

	if (FUNC16(EXTENT_FLAG_PREALLOC, &em->flags) ||
	    ((FUNC0(inode)->flags & BTRFS_INODE_NODATACOW) &&
	     em->block_start != EXTENT_MAP_HOLE)) {
		int type;
		int ret;
		u64 block_start;

		if (FUNC16(EXTENT_FLAG_PREALLOC, &em->flags))
			type = BTRFS_ORDERED_PREALLOC;
		else
			type = BTRFS_ORDERED_NOCOW;
		len = FUNC13(len, em->len - (start - em->start));
		block_start = em->block_start + (start - em->start);

		/*
		 * we're not going to log anything, but we do need
		 * to make sure the current transaction stays open
		 * while we look for nocow cross refs
		 */
		trans = FUNC6(root);
		if (FUNC1(trans))
			goto must_cow;

		if (FUNC8(trans, inode, start, len) == 1) {
			ret = FUNC3(inode, start,
					   block_start, len, len, type);
			FUNC4(trans, root);
			if (ret) {
				FUNC10(em);
				return ret;
			}
			goto unlock;
		}
		FUNC4(trans, root);
	}
must_cow:
	/*
	 * this will cow the extent, reset the len in case we changed
	 * it above
	 */
	len = bh_result->b_size;
	em = FUNC7(inode, em, start, len);
	if (FUNC1(em))
		return FUNC2(em);
	len = FUNC13(len, em->len - (start - em->start));
unlock:
	FUNC9(&FUNC0(inode)->io_tree, start, start + len - 1,
			  EXTENT_LOCKED | EXTENT_DELALLOC | EXTENT_DIRTY, 1,
			  0, NULL, GFP_NOFS);
map:
	bh_result->b_blocknr = (em->block_start + (start - em->start)) >>
		inode->i_blkbits;
	bh_result->b_size = len;
	bh_result->b_bdev = em->bdev;
	FUNC14(bh_result);
	if (create) {
		if (!FUNC16(EXTENT_FLAG_PREALLOC, &em->flags))
			FUNC15(bh_result);

		/*
		 * Need to update the i_size under the extent lock so buffered
		 * readers will get the updated i_size when we unlock.
		 */
		if (start + len > FUNC11(inode))
			FUNC12(inode, start + len);
	}

	FUNC10(em);

	return 0;
}