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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_path {int leave_spinning; struct extent_buffer** nodes; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DIR_ITEM_KEY ; 
 int EEXIST ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_dir_item*) ; 
 int FUNC1 (struct btrfs_dir_item*) ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_disk_key*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,struct inode*,struct btrfs_disk_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,struct btrfs_dir_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,struct btrfs_dir_item*,struct btrfs_disk_key*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,struct btrfs_dir_item*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,struct btrfs_dir_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*,struct btrfs_dir_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_key*,int /*<<< orphan*/ ) ; 
 struct btrfs_dir_item* FUNC16 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*,char const*,unsigned long,int) ; 

int FUNC18(struct btrfs_trans_handle *trans, struct btrfs_root
			  *root, const char *name, int name_len,
			  struct inode *dir, struct btrfs_key *location,
			  u8 type, u64 index)
{
	int ret = 0;
	int ret2 = 0;
	struct btrfs_path *path;
	struct btrfs_dir_item *dir_item;
	struct extent_buffer *leaf;
	unsigned long name_ptr;
	struct btrfs_key key;
	struct btrfs_disk_key disk_key;
	u32 data_size;

	key.objectid = FUNC5(dir);
	FUNC15(&key, BTRFS_DIR_ITEM_KEY);
	key.offset = FUNC8(name, name_len);

	path = FUNC2();
	if (!path)
		return -ENOMEM;
	path->leave_spinning = 1;

	FUNC3(&disk_key, location);

	data_size = sizeof(*dir_item) + name_len;
	dir_item = FUNC16(trans, root, path, &key, data_size,
					name, name_len);
	if (FUNC0(dir_item)) {
		ret = FUNC1(dir_item);
		if (ret == -EEXIST)
			goto second_insert;
		goto out_free;
	}

	leaf = path->nodes[0];
	FUNC11(leaf, dir_item, &disk_key);
	FUNC14(leaf, dir_item, type);
	FUNC10(leaf, dir_item, 0);
	FUNC12(leaf, dir_item, name_len);
	FUNC13(leaf, dir_item, trans->transid);
	name_ptr = (unsigned long)(dir_item + 1);

	FUNC17(leaf, name, name_ptr, name_len);
	FUNC7(leaf);

second_insert:
	/* FIXME, use some real flag for selecting the extra index */
	if (root == root->fs_info->tree_root) {
		ret = 0;
		goto out_free;
	}
	FUNC9(path);

	ret2 = FUNC6(trans, root, name, name_len, dir,
					      &disk_key, type, index);
out_free:
	FUNC4(path);
	if (ret)
		return ret;
	if (ret2)
		return ret2;
	return 0;
}