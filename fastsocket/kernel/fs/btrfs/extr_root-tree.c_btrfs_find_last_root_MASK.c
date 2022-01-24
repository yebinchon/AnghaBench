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
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
typedef  int /*<<< orphan*/  found_key ;

/* Variables and functions */
 scalar_t__ BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_key*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,struct btrfs_root_item*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct btrfs_root *root, u64 objectid,
			struct btrfs_root_item *item, struct btrfs_key *key)
{
	struct btrfs_path *path;
	struct btrfs_key search_key;
	struct btrfs_key found_key;
	struct extent_buffer *l;
	int ret;
	int slot;

	search_key.objectid = objectid;
	search_key.type = BTRFS_ROOT_ITEM_KEY;
	search_key.offset = (u64)-1;

	path = FUNC1();
	if (!path)
		return -ENOMEM;
	ret = FUNC5(NULL, root, &search_key, path, 0, 0);
	if (ret < 0)
		goto out;

	FUNC0(ret == 0);
	if (path->slots[0] == 0) {
		ret = 1;
		goto out;
	}
	l = path->nodes[0];
	slot = path->slots[0] - 1;
	FUNC3(l, &found_key, slot);
	if (found_key.objectid != objectid ||
	    found_key.type != BTRFS_ROOT_ITEM_KEY) {
		ret = 1;
		goto out;
	}
	if (item)
		FUNC7(l, item, FUNC4(l, slot),
				   sizeof(*item));
	if (key)
		FUNC6(key, &found_key, sizeof(found_key));
	ret = 0;
out:
	FUNC2(path);
	return ret;
}