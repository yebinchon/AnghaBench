#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_3__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {scalar_t__ type; int /*<<< orphan*/  offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_free_cluster {int /*<<< orphan*/  refill_lock; } ;
struct TYPE_7__ {int offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_block_group_cache {int flags; scalar_t__ cached; TYPE_2__ key; TYPE_1__* space_info; int /*<<< orphan*/  list; int /*<<< orphan*/  cache_node; int /*<<< orphan*/  lock; int /*<<< orphan*/ * inode; scalar_t__ iref; int /*<<< orphan*/  ro; } ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_8__ {int /*<<< orphan*/  block_group_cache_lock; int /*<<< orphan*/  block_group_cache_tree; struct btrfs_free_cluster meta_alloc_cluster; struct btrfs_free_cluster data_alloc_cluster; struct btrfs_root* extent_root; struct btrfs_root* tree_root; } ;
struct TYPE_6__ {int total_bytes; int bytes_readonly; int disk_total; int /*<<< orphan*/  lock; int /*<<< orphan*/  groups_sem; int /*<<< orphan*/ * block_groups; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_DUP ; 
 int BTRFS_BLOCK_GROUP_RAID1 ; 
 int BTRFS_BLOCK_GROUP_RAID10 ; 
 scalar_t__ BTRFS_CACHE_STARTED ; 
 int /*<<< orphan*/  BTRFS_FREE_SPACE_OBJECTID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct btrfs_path* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 struct btrfs_block_group_cache* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_block_group_cache*,struct btrfs_free_cluster*) ; 
 int FUNC13 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_root*,struct btrfs_block_group_cache*) ; 
 int FUNC18 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC22 (struct btrfs_root*,struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC23 (struct btrfs_key*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct btrfs_block_group_cache*) ; 

int FUNC29(struct btrfs_trans_handle *trans,
			     struct btrfs_root *root, u64 group_start)
{
	struct btrfs_path *path;
	struct btrfs_block_group_cache *block_group;
	struct btrfs_free_cluster *cluster;
	struct btrfs_root *tree_root = root->fs_info->tree_root;
	struct btrfs_key key;
	struct inode *inode;
	int ret;
	int index;
	int factor;

	root = root->fs_info->extent_root;

	block_group = FUNC7(root->fs_info, group_start);
	FUNC0(!block_group);
	FUNC0(!block_group->ro);

	/*
	 * Free the reserved super bytes from this block group before
	 * remove it.
	 */
	FUNC17(root, block_group);

	FUNC23(&key, &block_group->key, sizeof(key));
	index = FUNC18(block_group);
	if (block_group->flags & (BTRFS_BLOCK_GROUP_DUP |
				  BTRFS_BLOCK_GROUP_RAID1 |
				  BTRFS_BLOCK_GROUP_RAID10))
		factor = 2;
	else
		factor = 1;

	/* make sure this block group isn't part of an allocation cluster */
	cluster = &root->fs_info->data_alloc_cluster;
	FUNC25(&cluster->refill_lock);
	FUNC12(block_group, cluster);
	FUNC26(&cluster->refill_lock);

	/*
	 * make sure this block group isn't part of a metadata
	 * allocation cluster
	 */
	cluster = &root->fs_info->meta_alloc_cluster;
	FUNC25(&cluster->refill_lock);
	FUNC12(block_group, cluster);
	FUNC26(&cluster->refill_lock);

	path = FUNC3();
	if (!path) {
		ret = -ENOMEM;
		goto out;
	}

	inode = FUNC22(tree_root, block_group, path);
	if (!FUNC1(inode)) {
		ret = FUNC8(trans, inode);
		if (ret) {
			FUNC2(inode);
			goto out;
		}
		FUNC15(inode);
		/* One for the block groups ref */
		FUNC25(&block_group->lock);
		if (block_group->iref) {
			block_group->iref = 0;
			block_group->inode = NULL;
			FUNC26(&block_group->lock);
			FUNC19(inode);
		} else {
			FUNC26(&block_group->lock);
		}
		/* One for our lookup ref */
		FUNC2(inode);
	}

	key.objectid = BTRFS_FREE_SPACE_OBJECTID;
	key.offset = block_group->key.objectid;
	key.type = 0;

	ret = FUNC13(trans, tree_root, &key, path, -1, 1);
	if (ret < 0)
		goto out;
	if (ret > 0)
		FUNC10(path);
	if (ret == 0) {
		ret = FUNC5(trans, tree_root, path);
		if (ret)
			goto out;
		FUNC10(path);
	}

	FUNC25(&root->fs_info->block_group_cache_lock);
	FUNC24(&block_group->cache_node,
		 &root->fs_info->block_group_cache_tree);
	FUNC26(&root->fs_info->block_group_cache_lock);

	FUNC16(&block_group->space_info->groups_sem);
	/*
	 * we must use list_del_init so people can check to see if they
	 * are still on the list after taking the semaphore
	 */
	FUNC20(&block_group->list);
	if (FUNC21(&block_group->space_info->block_groups[index]))
		FUNC14(root->fs_info, block_group->flags);
	FUNC27(&block_group->space_info->groups_sem);

	if (block_group->cached == BTRFS_CACHE_STARTED)
		FUNC28(block_group);

	FUNC11(block_group);

	FUNC25(&block_group->space_info->lock);
	block_group->space_info->total_bytes -= block_group->key.offset;
	block_group->space_info->bytes_readonly -= block_group->key.offset;
	block_group->space_info->disk_total -= block_group->key.offset * factor;
	FUNC26(&block_group->space_info->lock);

	FUNC23(&key, &block_group->key, sizeof(key));

	FUNC4(root->fs_info);

	FUNC9(block_group);
	FUNC9(block_group);

	ret = FUNC13(trans, root, &key, path, -1, 1);
	if (ret > 0)
		ret = -EIO;
	if (ret < 0)
		goto out;

	ret = FUNC5(trans, root, path);
out:
	FUNC6(path);
	return ret;
}