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
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct extent_map {int /*<<< orphan*/  flags; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  flags; } ;
struct btrfs_root {scalar_t__ sectorsize; } ;
struct btrfs_ordered_extent {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct extent_io_tree io_tree; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXTENT_FLAG_PREALLOC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct extent_map*) ; 
 int FUNC2 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_map*,struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct extent_map*,struct inode*,scalar_t__,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_map*,struct btrfs_root*) ; 
 struct extent_map* FUNC7 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct extent_map*,struct btrfs_root*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_ordered_extent* FUNC10 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_ordered_extent*) ; 
 struct extent_map* FUNC12 (struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_map*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_io_tree*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct extent_state**) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**,int /*<<< orphan*/ ) ; 

int FUNC21(struct inode *inode, loff_t oldsize, loff_t size)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	struct extent_map *em = NULL;
	struct extent_state *cached_state = NULL;
	u64 mask = root->sectorsize - 1;
	u64 hole_start = (oldsize + mask) & ~mask;
	u64 block_end = (size + mask) & ~mask;
	u64 last_byte;
	u64 cur_offset;
	u64 hole_size;
	int err = 0;

	if (size <= hole_start)
		return 0;

	while (1) {
		struct btrfs_ordered_extent *ordered;
		FUNC14(inode, hole_start,
					 block_end - hole_start);
		FUNC17(io_tree, hole_start, block_end - 1, 0,
				 &cached_state);
		ordered = FUNC10(inode, hole_start);
		if (!ordered)
			break;
		FUNC20(io_tree, hole_start, block_end - 1,
				     &cached_state, GFP_NOFS);
		FUNC11(ordered);
	}

	cur_offset = hole_start;
	while (1) {
		em = FUNC7(inode, NULL, 0, cur_offset,
				block_end - cur_offset, 0);
		if (FUNC1(em)) {
			err = FUNC2(em);
			break;
		}
		last_byte = FUNC18(FUNC15(em), block_end);
		last_byte = (last_byte + mask) & ~mask;
		if (!FUNC19(EXTENT_FLAG_PREALLOC, &em->flags)) {
			u64 hint_byte = 0;
			hole_size = last_byte - cur_offset;

			trans = FUNC12(root, 3);
			if (FUNC1(trans)) {
				err = FUNC2(trans);
				break;
			}

			err = FUNC5(trans, inode, cur_offset,
						 cur_offset + hole_size,
						 &hint_byte, 1);
			if (err) {
				FUNC3(trans, root, err);
				FUNC6(trans, root);
				break;
			}

			err = FUNC9(trans, root,
					FUNC8(inode), cur_offset, 0,
					0, hole_size, 0, hole_size,
					0, 0, 0);
			if (err) {
				FUNC3(trans, root, err);
				FUNC6(trans, root);
				break;
			}

			FUNC4(inode, hole_start,
					last_byte - 1, 0);

			FUNC13(trans, root, inode);
			FUNC6(trans, root);
		}
		FUNC16(em);
		em = NULL;
		cur_offset = last_byte;
		if (cur_offset >= block_end)
			break;
	}

	FUNC16(em);
	FUNC20(io_tree, hole_start, block_end - 1, &cached_state,
			     GFP_NOFS);
	return err;
}