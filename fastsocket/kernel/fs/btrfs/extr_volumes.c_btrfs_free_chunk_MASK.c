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
typedef  void* u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int /*<<< orphan*/  type; void* offset; void* objectid; } ;
struct TYPE_2__ {struct btrfs_root* chunk_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_CHUNK_ITEM_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 

__attribute__((used)) static int FUNC5(struct btrfs_trans_handle *trans,
			    struct btrfs_root *root,
			    u64 chunk_tree, u64 chunk_objectid,
			    u64 chunk_offset)
{
	int ret;
	struct btrfs_path *path;
	struct btrfs_key key;

	root = root->fs_info->chunk_root;
	path = FUNC0();
	if (!path)
		return -ENOMEM;

	key.objectid = chunk_objectid;
	key.offset = chunk_offset;
	key.type = BTRFS_CHUNK_ITEM_KEY;

	ret = FUNC4(trans, root, &key, path, -1, 1);
	if (ret < 0)
		goto out;
	else if (ret > 0) { /* Logic error or corruption */
		FUNC2(root->fs_info, -ENOENT,
			    "Failed lookup while freeing chunk.");
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC1(trans, root, path);
	if (ret < 0)
		FUNC2(root->fs_info, ret,
			    "Failed to delete chunk item.");
out:
	FUNC3(path);
	return ret;
}