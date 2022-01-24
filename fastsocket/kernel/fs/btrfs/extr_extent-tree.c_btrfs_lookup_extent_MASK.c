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
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {void* offset; void* objectid; } ;
struct TYPE_2__ {int /*<<< orphan*/  extent_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_EXTENT_ITEM_KEY ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_key*,int /*<<< orphan*/ ) ; 

int FUNC4(struct btrfs_root *root, u64 start, u64 len)
{
	int ret;
	struct btrfs_key key;
	struct btrfs_path *path;

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	key.objectid = start;
	key.offset = len;
	FUNC3(&key, BTRFS_EXTENT_ITEM_KEY);
	ret = FUNC2(NULL, root->fs_info->extent_root, &key, path,
				0, 0);
	FUNC1(path);
	return ret;
}