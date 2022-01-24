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
typedef  scalar_t__ u64 ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_size; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_2__ root_key; TYPE_1__* fs_info; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tree_root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_dir_item*) ; 
 int FUNC1 (struct btrfs_dir_item*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 struct btrfs_path* FUNC4 () ; 
 int FUNC5 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,char const*,int) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,scalar_t__) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_dir_item*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_dir_item*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 struct btrfs_dir_item* FUNC13 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_path*) ; 
 struct btrfs_dir_item* FUNC15 (struct btrfs_root*,struct btrfs_path*,scalar_t__,char const*,int) ; 
 int FUNC16 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 

int FUNC18(struct btrfs_trans_handle *trans,
			struct btrfs_root *root,
			struct inode *dir, u64 objectid,
			const char *name, int name_len)
{
	struct btrfs_path *path;
	struct extent_buffer *leaf;
	struct btrfs_dir_item *di;
	struct btrfs_key key;
	u64 index;
	int ret;
	u64 dir_ino = FUNC11(dir);

	path = FUNC4();
	if (!path)
		return -ENOMEM;

	di = FUNC13(trans, root, path, dir_ino,
				   name, name_len, -1);
	if (FUNC0(di)) {
		if (!di)
			ret = -ENOENT;
		else
			ret = FUNC1(di);
		goto out;
	}

	leaf = path->nodes[0];
	FUNC8(leaf, di, &key);
	FUNC2(key.type != BTRFS_ROOT_ITEM_KEY || key.objectid != objectid);
	ret = FUNC7(trans, root, path, di);
	if (ret) {
		FUNC3(trans, root, ret);
		goto out;
	}
	FUNC14(path);

	ret = FUNC5(trans, root->fs_info->tree_root,
				 objectid, root->root_key.objectid,
				 dir_ino, &index, name, name_len);
	if (ret < 0) {
		if (ret != -ENOENT) {
			FUNC3(trans, root, ret);
			goto out;
		}
		di = FUNC15(root, path, dir_ino,
						 name, name_len);
		if (FUNC0(di)) {
			if (!di)
				ret = -ENOENT;
			else
				ret = FUNC1(di);
			FUNC3(trans, root, ret);
			goto out;
		}

		leaf = path->nodes[0];
		FUNC12(leaf, &key, path->slots[0]);
		FUNC14(path);
		index = key.offset;
	}
	FUNC14(path);

	ret = FUNC6(trans, root, dir, index);
	if (ret) {
		FUNC3(trans, root, ret);
		goto out;
	}

	FUNC10(dir, dir->i_size - name_len * 2);
	FUNC17(dir);
	dir->i_mtime = dir->i_ctime = CURRENT_TIME;
	ret = FUNC16(trans, root, dir);
	if (ret)
		FUNC3(trans, root, ret);
out:
	FUNC9(path);
	return ret;
}