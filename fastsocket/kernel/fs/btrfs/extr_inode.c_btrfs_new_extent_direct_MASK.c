#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ orig_start; scalar_t__ block_len; scalar_t__ flags; int /*<<< orphan*/  bdev; int /*<<< orphan*/  block_start; } ;
struct btrfs_trans_handle {int /*<<< orphan*/ * block_rsv; } ;
struct btrfs_root {TYPE_2__* fs_info; int /*<<< orphan*/  sectorsize; } ;
struct btrfs_key {scalar_t__ offset; int /*<<< orphan*/  objectid; } ;
struct TYPE_6__ {scalar_t__ disk_i_size; struct extent_map_tree extent_tree; struct btrfs_root* root; } ;
struct TYPE_5__ {TYPE_1__* fs_devices; int /*<<< orphan*/  delalloc_block_rsv; } ;
struct TYPE_4__ {int /*<<< orphan*/  latest_bdev; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int EEXIST ; 
 int ENOMEM ; 
 struct extent_map* FUNC1 (struct btrfs_trans_handle*) ; 
 struct extent_map* FUNC2 (int) ; 
 int /*<<< orphan*/  EXTENT_FLAG_PINNED ; 
 int /*<<< orphan*/  EXTENT_MAP_HOLE ; 
 scalar_t__ FUNC3 (struct btrfs_trans_handle*) ; 
 int FUNC4 (struct extent_map_tree*,struct extent_map*) ; 
 struct extent_map* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_trans_handle*,struct inode*) ; 
 int FUNC7 (struct inode*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_root*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct btrfs_trans_handle* FUNC11 (struct btrfs_root*) ; 
 int FUNC12 (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_map*) ; 
 scalar_t__ FUNC14 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_map *FUNC18(struct inode *inode,
						  struct extent_map *em,
						  u64 start, u64 len)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_trans_handle *trans;
	struct extent_map_tree *em_tree = &FUNC0(inode)->extent_tree;
	struct btrfs_key ins;
	u64 alloc_hint;
	int ret;
	bool insert = false;

	/*
	 * Ok if the extent map we looked up is a hole and is for the exact
	 * range we want, there is no reason to allocate a new one, however if
	 * it is not right then we need to free this one and drop the cache for
	 * our range.
	 */
	if (em->block_start != EXTENT_MAP_HOLE || em->start != start ||
	    em->len != len) {
		FUNC13(em);
		em = NULL;
		insert = true;
		FUNC8(inode, start, start + len - 1, 0);
	}

	trans = FUNC11(root);
	if (FUNC3(trans))
		return FUNC1(trans);

	if (start <= FUNC0(inode)->disk_i_size && len < 64 * 1024)
		FUNC6(trans, inode);

	trans->block_rsv = &root->fs_info->delalloc_block_rsv;

	alloc_hint = FUNC14(inode, start, len);
	ret = FUNC12(trans, root, len, root->sectorsize, 0,
				   alloc_hint, &ins, 1);
	if (ret) {
		em = FUNC2(ret);
		goto out;
	}

	if (!em) {
		em = FUNC5();
		if (!em) {
			em = FUNC2(-ENOMEM);
			goto out;
		}
	}

	em->start = start;
	em->orig_start = em->start;
	em->len = ins.offset;

	em->block_start = ins.objectid;
	em->block_len = ins.offset;
	em->bdev = root->fs_info->fs_devices->latest_bdev;

	/*
	 * We need to do this because if we're using the original em we searched
	 * for, we could have EXTENT_FLAG_VACANCY set, and we don't want that.
	 */
	em->flags = 0;
	FUNC15(EXTENT_FLAG_PINNED, &em->flags);

	while (insert) {
		FUNC16(&em_tree->lock);
		ret = FUNC4(em_tree, em);
		FUNC17(&em_tree->lock);
		if (ret != -EEXIST)
			break;
		FUNC8(inode, start, start + em->len - 1, 0);
	}

	ret = FUNC7(inode, start, ins.objectid,
					   ins.offset, ins.offset, 0);
	if (ret) {
		FUNC10(root, ins.objectid, ins.offset);
		em = FUNC2(ret);
	}
out:
	FUNC9(trans, root);
	return em;
}