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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_block_group_cache {TYPE_1__ key; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_root*,int /*<<< orphan*/ *) ; 

int FUNC2(struct btrfs_root *root,
			    struct btrfs_trans_handle *trans,
			    struct btrfs_block_group_cache *block_group,
			    struct btrfs_path *path)
{
	int ret;
	u64 ino;

	ret = FUNC1(root, &ino);
	if (ret < 0)
		return ret;

	return FUNC0(root, trans, path, ino,
					 block_group->key.objectid);
}