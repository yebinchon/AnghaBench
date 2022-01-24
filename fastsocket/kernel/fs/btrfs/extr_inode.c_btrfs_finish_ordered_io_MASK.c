#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/ * block_rsv; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_ordered_extent {int compress_type; scalar_t__ len; scalar_t__ file_offset; int /*<<< orphan*/  flags; int /*<<< orphan*/  list; int /*<<< orphan*/  disk_len; int /*<<< orphan*/  start; struct inode* inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  extent_tree; struct extent_io_tree io_tree; struct btrfs_root* root; } ;
struct TYPE_3__ {struct btrfs_root* tree_root; int /*<<< orphan*/  delalloc_block_rsv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FILE_EXTENT_REG ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_ORDERED_COMPRESSED ; 
 int /*<<< orphan*/  BTRFS_ORDERED_IOERR ; 
 int /*<<< orphan*/  BTRFS_ORDERED_NOCOW ; 
 int /*<<< orphan*/  BTRFS_ORDERED_PREALLOC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,struct inode*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int FUNC9 (struct btrfs_root*,struct inode*) ; 
 struct btrfs_trans_handle* FUNC10 (struct btrfs_root*) ; 
 struct btrfs_trans_handle* FUNC11 (struct btrfs_root*) ; 
 int FUNC12 (struct btrfs_trans_handle*,struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ ,struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct btrfs_ordered_extent*) ; 
 int FUNC16 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_io_tree*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct btrfs_trans_handle*,struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct extent_io_tree*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct extent_state**) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC24(struct btrfs_ordered_extent *ordered_extent)
{
	struct inode *inode = ordered_extent->inode;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_trans_handle *trans = NULL;
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	struct extent_state *cached_state = NULL;
	int compress_type = 0;
	int ret;
	bool nolock;

	nolock = FUNC9(root, inode);

	if (FUNC21(BTRFS_ORDERED_IOERR, &ordered_extent->flags)) {
		ret = -EIO;
		goto out;
	}

	if (FUNC21(BTRFS_ORDERED_NOCOW, &ordered_extent->flags)) {
		FUNC1(!FUNC19(&ordered_extent->list)); /* Logic error */
		ret = FUNC13(inode, 0, ordered_extent);
		if (!ret) {
			if (nolock)
				trans = FUNC11(root);
			else
				trans = FUNC10(root);
			if (FUNC2(trans))
				return FUNC3(trans);
			trans->block_rsv = &root->fs_info->delalloc_block_rsv;
			ret = FUNC16(trans, root, inode);
			if (ret) /* -ENOMEM or corruption */
				FUNC5(trans, root, ret);
		}
		goto out;
	}

	FUNC20(io_tree, ordered_extent->file_offset,
			 ordered_extent->file_offset + ordered_extent->len - 1,
			 0, &cached_state);

	if (nolock)
		trans = FUNC11(root);
	else
		trans = FUNC10(root);
	if (FUNC2(trans)) {
		ret = FUNC3(trans);
		trans = NULL;
		goto out_unlock;
	}
	trans->block_rsv = &root->fs_info->delalloc_block_rsv;

	if (FUNC21(BTRFS_ORDERED_COMPRESSED, &ordered_extent->flags))
		compress_type = ordered_extent->compress_type;
	if (FUNC21(BTRFS_ORDERED_PREALLOC, &ordered_extent->flags)) {
		FUNC1(compress_type);
		ret = FUNC12(trans, inode,
						ordered_extent->file_offset,
						ordered_extent->file_offset +
						ordered_extent->len);
	} else {
		FUNC1(root == root->fs_info->tree_root);
		ret = FUNC18(trans, inode,
						ordered_extent->file_offset,
						ordered_extent->start,
						ordered_extent->disk_len,
						ordered_extent->len,
						ordered_extent->len,
						compress_type, 0, 0,
						BTRFS_FILE_EXTENT_REG);
		FUNC23(&FUNC0(inode)->extent_tree,
				   ordered_extent->file_offset,
				   ordered_extent->len);
	}

	if (ret < 0) {
		FUNC5(trans, root, ret);
		goto out_unlock;
	}

	FUNC4(trans, inode, ordered_extent->file_offset,
			  &ordered_extent->list);

	ret = FUNC13(inode, 0, ordered_extent);
	if (!ret || !FUNC21(BTRFS_ORDERED_PREALLOC, &ordered_extent->flags)) {
		ret = FUNC16(trans, root, inode);
		if (ret) { /* -ENOMEM or corruption */
			FUNC5(trans, root, ret);
			goto out_unlock;
		}
	}
	ret = 0;
out_unlock:
	FUNC22(io_tree, ordered_extent->file_offset,
			     ordered_extent->file_offset +
			     ordered_extent->len - 1, &cached_state, GFP_NOFS);
out:
	if (root != root->fs_info->tree_root)
		FUNC6(inode, ordered_extent->len);
	if (trans) {
		if (nolock)
			FUNC8(trans, root);
		else
			FUNC7(trans, root);
	}

	if (ret)
		FUNC17(io_tree, ordered_extent->file_offset,
				      ordered_extent->file_offset +
				      ordered_extent->len - 1, NULL, GFP_NOFS);

	/*
	 * This needs to be dont to make sure anybody waiting knows we are done
	 * upating everything for this ordered extent.
	 */
	FUNC15(inode, ordered_extent);

	/* once for us */
	FUNC14(ordered_extent);
	/* once for the tree */
	FUNC14(ordered_extent);

	return ret;
}