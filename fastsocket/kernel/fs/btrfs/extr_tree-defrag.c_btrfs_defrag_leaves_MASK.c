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
typedef  int /*<<< orphan*/  u64 ;
typedef  void* u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_root {scalar_t__ ref_cows; int /*<<< orphan*/  defrag_trans_start; struct btrfs_key defrag_progress; TYPE_2__ defrag_max; int /*<<< orphan*/  node; TYPE_1__* fs_info; } ;
struct btrfs_path {int keep_locks; struct extent_buffer** nodes; void** slots; } ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_3__ {struct btrfs_root* extent_root; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SSD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct btrfs_path* FUNC1 () ; 
 int FUNC2 (struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC6 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,TYPE_2__*,void*) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int FUNC10 (struct btrfs_root*,struct btrfs_key*,int /*<<< orphan*/ *,struct btrfs_path*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 scalar_t__ FUNC13 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_key*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_key*,int /*<<< orphan*/ ,int) ; 

int FUNC18(struct btrfs_trans_handle *trans,
			struct btrfs_root *root, int cache_only)
{
	struct btrfs_path *path = NULL;
	struct btrfs_key key;
	int ret = 0;
	int wret;
	int level;
	int is_extent = 0;
	int next_key_ret = 0;
	u64 last_ret = 0;
	u64 min_trans = 0;

	if (cache_only)
		goto out;

	if (root->fs_info->extent_root == root) {
		/*
		 * there's recursion here right now in the tree locking,
		 * we can't defrag the extent root without deadlock
		 */
		goto out;
	}

	if (root->ref_cows == 0 && !is_extent)
		goto out;

	if (FUNC13(root, SSD))
		goto out;

	path = FUNC1();
	if (!path)
		return -ENOMEM;

	level = FUNC4(root->node);

	if (level == 0)
		goto out;

	if (root->defrag_progress.objectid == 0) {
		struct extent_buffer *root_node;
		u32 nritems;

		root_node = FUNC6(root);
		FUNC12(root_node);
		nritems = FUNC5(root_node);
		root->defrag_max.objectid = 0;
		/* from above we know this is not a leaf */
		FUNC7(root_node, &root->defrag_max,
				      nritems - 1);
		FUNC14(root_node);
		FUNC15(root_node);
		FUNC17(&key, 0, sizeof(key));
	} else {
		FUNC16(&key, &root->defrag_progress, sizeof(key));
	}

	path->keep_locks = 1;
	if (cache_only)
		min_trans = root->defrag_trans_start;

	ret = FUNC10(root, &key, NULL, path,
				   cache_only, min_trans);
	if (ret < 0)
		goto out;
	if (ret > 0) {
		ret = 0;
		goto out;
	}
	FUNC9(path);
	wret = FUNC11(trans, root, &key, path, 0, 1);

	if (wret < 0) {
		ret = wret;
		goto out;
	}
	if (!path->nodes[1]) {
		ret = 0;
		goto out;
	}
	path->slots[1] = FUNC5(path->nodes[1]);
	next_key_ret = FUNC2(root, path, &key, 1, cache_only,
					   min_trans);
	ret = FUNC8(trans, root,
				 path->nodes[1], 0,
				 cache_only, &last_ret,
				 &root->defrag_progress);
	if (ret) {
		FUNC0(ret == -EAGAIN);
		goto out;
	}
	if (next_key_ret == 0) {
		FUNC16(&root->defrag_progress, &key, sizeof(key));
		ret = -EAGAIN;
	}
out:
	if (path)
		FUNC3(path);
	if (ret == -EAGAIN) {
		if (root->defrag_max.objectid > root->defrag_progress.objectid)
			goto done;
		if (root->defrag_max.type > root->defrag_progress.type)
			goto done;
		if (root->defrag_max.offset > root->defrag_progress.offset)
			goto done;
		ret = 0;
	}
done:
	if (ret != -EAGAIN) {
		FUNC17(&root->defrag_progress, 0,
		       sizeof(root->defrag_progress));
		root->defrag_trans_start = trans->transid;
	}
	return ret;
}