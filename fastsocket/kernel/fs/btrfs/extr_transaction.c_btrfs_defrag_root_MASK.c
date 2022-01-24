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
struct btrfs_trans_handle {unsigned long blocks_used; } ;
struct btrfs_root {scalar_t__ defrag_running; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_root; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 scalar_t__ FUNC5 (struct btrfs_fs_info*) ; 
 struct btrfs_trans_handle* FUNC6 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__*,int) ; 

int FUNC9(struct btrfs_root *root, int cacheonly)
{
	struct btrfs_fs_info *info = root->fs_info;
	struct btrfs_trans_handle *trans;
	int ret;
	unsigned long nr;

	if (FUNC8(&root->defrag_running, 1))
		return 0;

	while (1) {
		trans = FUNC6(root, 0);
		if (FUNC0(trans))
			return FUNC1(trans);

		ret = FUNC3(trans, root, cacheonly);

		nr = trans->blocks_used;
		FUNC4(trans, root);
		FUNC2(info->tree_root, nr);
		FUNC7();

		if (FUNC5(root->fs_info) || ret != -EAGAIN)
			break;
	}
	root->defrag_running = 0;
	return ret;
}