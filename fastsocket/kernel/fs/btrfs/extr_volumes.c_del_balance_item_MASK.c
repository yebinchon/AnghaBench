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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BALANCE_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_BALANCE_OBJECTID ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 struct btrfs_path* FUNC2 () ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 struct btrfs_trans_handle* FUNC7 (struct btrfs_root*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct btrfs_root *root)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_path *path;
	struct btrfs_key key;
	int ret, err;

	path = FUNC2();
	if (!path)
		return -ENOMEM;

	trans = FUNC7(root, 0);
	if (FUNC0(trans)) {
		FUNC5(path);
		return FUNC1(trans);
	}

	key.objectid = BTRFS_BALANCE_OBJECTID;
	key.type = BTRFS_BALANCE_ITEM_KEY;
	key.offset = 0;

	ret = FUNC6(trans, root, &key, path, -1, 1);
	if (ret < 0)
		goto out;
	if (ret > 0) {
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC4(trans, root, path);
out:
	FUNC5(path);
	err = FUNC3(trans, root);
	if (err && !ret)
		ret = err;
	return ret;
}