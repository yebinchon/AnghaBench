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
struct extent_buffer {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ BTRFS_ORPHAN_ITEM_KEY ; 
 scalar_t__ BTRFS_ORPHAN_OBJECTID ; 
 scalar_t__ BTRFS_ROOT_ITEM_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_root*) ; 
 int FUNC1 (struct btrfs_root*) ; 
 struct btrfs_path* FUNC2 () ; 
 int FUNC3 (struct btrfs_root*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 scalar_t__ FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,struct btrfs_key*,scalar_t__) ; 
 int FUNC7 (struct btrfs_root*,struct btrfs_path*) ; 
 struct btrfs_root* FUNC8 (int /*<<< orphan*/ ,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct btrfs_root *tree_root)
{
	struct extent_buffer *leaf;
	struct btrfs_path *path;
	struct btrfs_key key;
	struct btrfs_key root_key;
	struct btrfs_root *root;
	int err = 0;
	int ret;

	path = FUNC2();
	if (!path)
		return -ENOMEM;

	key.objectid = BTRFS_ORPHAN_OBJECTID;
	key.type = BTRFS_ORPHAN_ITEM_KEY;
	key.offset = 0;

	root_key.type = BTRFS_ROOT_ITEM_KEY;
	root_key.offset = (u64)-1;

	while (1) {
		ret = FUNC10(NULL, tree_root, &key, path, 0, 0);
		if (ret < 0) {
			err = ret;
			break;
		}

		leaf = path->nodes[0];
		if (path->slots[0] >= FUNC5(leaf)) {
			ret = FUNC7(tree_root, path);
			if (ret < 0)
				err = ret;
			if (ret != 0)
				break;
			leaf = path->nodes[0];
		}

		FUNC6(leaf, &key, path->slots[0]);
		FUNC9(path);

		if (key.objectid != BTRFS_ORPHAN_OBJECTID ||
		    key.type != BTRFS_ORPHAN_ITEM_KEY)
			break;

		root_key.objectid = key.offset;
		key.offset++;

		root = FUNC8(tree_root->fs_info,
						  &root_key);
		if (!FUNC0(root))
			continue;

		ret = FUNC1(root);
		if (ret != -ENOENT) {
			err = ret;
			break;
		}

		ret = FUNC3(tree_root, root_key.objectid);
		if (ret) {
			err = ret;
			break;
		}
	}

	FUNC4(path);
	return err;
}