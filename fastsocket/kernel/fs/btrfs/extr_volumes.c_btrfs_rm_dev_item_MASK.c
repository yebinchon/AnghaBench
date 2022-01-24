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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_device {int /*<<< orphan*/  devid; } ;
struct TYPE_2__ {struct btrfs_root* chunk_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DEV_ITEMS_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_DEV_ITEM_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 struct btrfs_trans_handle* FUNC7 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_root*) ; 

__attribute__((used)) static int FUNC10(struct btrfs_root *root,
			     struct btrfs_device *device)
{
	int ret;
	struct btrfs_path *path;
	struct btrfs_key key;
	struct btrfs_trans_handle *trans;

	root = root->fs_info->chunk_root;

	path = FUNC2();
	if (!path)
		return -ENOMEM;

	trans = FUNC7(root, 0);
	if (FUNC0(trans)) {
		FUNC5(path);
		return FUNC1(trans);
	}
	key.objectid = BTRFS_DEV_ITEMS_OBJECTID;
	key.type = BTRFS_DEV_ITEM_KEY;
	key.offset = device->devid;
	FUNC8(root);

	ret = FUNC6(trans, root, &key, path, -1, 1);
	if (ret < 0)
		goto out;

	if (ret > 0) {
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC4(trans, root, path);
	if (ret)
		goto out;
out:
	FUNC5(path);
	FUNC9(root);
	FUNC3(trans, root);
	return ret;
}