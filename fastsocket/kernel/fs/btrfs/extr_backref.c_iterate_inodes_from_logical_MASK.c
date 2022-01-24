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
typedef  scalar_t__ u64 ;
struct btrfs_path {int search_commit_root; } ;
struct btrfs_key {scalar_t__ objectid; } ;
struct btrfs_fs_info {int dummy; } ;
typedef  int /*<<< orphan*/  iterate_extent_inodes_t ;

/* Variables and functions */
 int BTRFS_EXTENT_FLAG_TREE_BLOCK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_path*) ; 
 int FUNC1 (struct btrfs_fs_info*,scalar_t__,struct btrfs_path*,struct btrfs_key*) ; 
 int FUNC2 (struct btrfs_fs_info*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *,void*) ; 

int FUNC3(u64 logical, struct btrfs_fs_info *fs_info,
				struct btrfs_path *path,
				iterate_extent_inodes_t *iterate, void *ctx)
{
	int ret;
	u64 extent_item_pos;
	struct btrfs_key found_key;
	int search_commit_root = path->search_commit_root;

	ret = FUNC1(fs_info, logical, path,
					&found_key);
	FUNC0(path);
	if (ret & BTRFS_EXTENT_FLAG_TREE_BLOCK)
		ret = -EINVAL;
	if (ret < 0)
		return ret;

	extent_item_pos = logical - found_key.objectid;
	ret = FUNC2(fs_info, found_key.objectid,
					extent_item_pos, search_commit_root,
					iterate, ctx);

	return ret;
}