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
struct map_lookup {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {struct btrfs_root* chunk_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FIRST_CHUNK_TREE_OBJECTID ; 
 int FUNC0 (struct btrfs_trans_handle*,struct btrfs_root*,struct map_lookup**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct map_lookup*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct btrfs_trans_handle *trans,
		      struct btrfs_root *extent_root, u64 type)
{
	u64 chunk_offset;
	u64 chunk_size;
	u64 stripe_size;
	struct map_lookup *map;
	struct btrfs_root *chunk_root = extent_root->fs_info->chunk_root;
	int ret;

	ret = FUNC2(chunk_root, BTRFS_FIRST_CHUNK_TREE_OBJECTID,
			      &chunk_offset);
	if (ret)
		return ret;

	ret = FUNC0(trans, extent_root, &map, &chunk_size,
				  &stripe_size, chunk_offset, type);
	if (ret)
		return ret;

	ret = FUNC1(trans, extent_root, map, chunk_offset,
				   chunk_size, stripe_size);
	if (ret)
		return ret;
	return 0;
}