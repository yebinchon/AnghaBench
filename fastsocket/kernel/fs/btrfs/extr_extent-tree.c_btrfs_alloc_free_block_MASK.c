#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_delayed_extent_op {int update_key; int update_flags; scalar_t__ is_data; int /*<<< orphan*/  flags_to_set; int /*<<< orphan*/  key; } ;
typedef  struct extent_buffer btrfs_block_rsv ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ADD_DELAYED_EXTENT ; 
 int /*<<< orphan*/  BTRFS_BLOCK_FLAG_FULL_BACKREF ; 
 int /*<<< orphan*/  BTRFS_TREE_LOG_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_TREE_RELOC_OBJECTID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct extent_buffer* FUNC1 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct btrfs_delayed_extent_op*,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 struct btrfs_delayed_extent_op* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct extent_buffer*,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ) ; 

struct extent_buffer *FUNC12(struct btrfs_trans_handle *trans,
					struct btrfs_root *root, u32 blocksize,
					u64 parent, u64 root_objectid,
					struct btrfs_disk_key *key, int level,
					u64 hint, u64 empty_size)
{
	struct btrfs_key ins;
	struct btrfs_block_rsv *block_rsv;
	struct extent_buffer *buf;
	u64 flags = 0;
	int ret;


	block_rsv = FUNC11(trans, root, blocksize);
	if (FUNC3(block_rsv))
		return FUNC1(block_rsv);

	ret = FUNC6(trans, root, blocksize, blocksize,
				   empty_size, hint, &ins, 0);
	if (ret) {
		FUNC10(root->fs_info, block_rsv, blocksize);
		return FUNC2(ret);
	}

	buf = FUNC5(trans, root, ins.objectid,
				    blocksize, level);
	FUNC0(FUNC3(buf)); /* -ENOMEM */

	if (root_objectid == BTRFS_TREE_RELOC_OBJECTID) {
		if (parent == 0)
			parent = ins.objectid;
		flags |= BTRFS_BLOCK_FLAG_FULL_BACKREF;
	} else
		FUNC0(parent > 0);

	if (root_objectid != BTRFS_TREE_LOG_OBJECTID) {
		struct btrfs_delayed_extent_op *extent_op;
		extent_op = FUNC7(sizeof(*extent_op), GFP_NOFS);
		FUNC0(!extent_op); /* -ENOMEM */
		if (key)
			FUNC8(&extent_op->key, key, sizeof(extent_op->key));
		else
			FUNC9(&extent_op->key, 0, sizeof(extent_op->key));
		extent_op->flags_to_set = flags;
		extent_op->update_key = 1;
		extent_op->update_flags = 1;
		extent_op->is_data = 0;

		ret = FUNC4(root->fs_info, trans,
					ins.objectid,
					ins.offset, parent, root_objectid,
					level, BTRFS_ADD_DELAYED_EXTENT,
					extent_op, 0);
		FUNC0(ret); /* -ENOMEM */
	}
	return buf;
}