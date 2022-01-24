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
struct btrfs_space_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  bytes_reserved; int /*<<< orphan*/  bytes_readonly; } ;
struct btrfs_fs_info {int /*<<< orphan*/  extent_root; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  reserved; scalar_t__ ro; struct btrfs_fs_info* fs_info; struct btrfs_space_info* space_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct btrfs_block_group_cache *block_group,
		       u64 *total_trimmed, u64 start, u64 bytes,
		       u64 reserved_start, u64 reserved_bytes)
{
	struct btrfs_space_info *space_info = block_group->space_info;
	struct btrfs_fs_info *fs_info = block_group->fs_info;
	int ret;
	int update = 0;
	u64 trimmed = 0;

	FUNC2(&space_info->lock);
	FUNC2(&block_group->lock);
	if (!block_group->ro) {
		block_group->reserved += reserved_bytes;
		space_info->bytes_reserved += reserved_bytes;
		update = 1;
	}
	FUNC3(&block_group->lock);
	FUNC3(&space_info->lock);

	ret = FUNC1(fs_info->extent_root,
					 start, bytes, &trimmed);
	if (!ret)
		*total_trimmed += trimmed;

	FUNC0(block_group, reserved_start, reserved_bytes);

	if (update) {
		FUNC2(&space_info->lock);
		FUNC2(&block_group->lock);
		if (block_group->ro)
			space_info->bytes_readonly += reserved_bytes;
		block_group->reserved -= reserved_bytes;
		space_info->bytes_reserved -= reserved_bytes;
		FUNC3(&space_info->lock);
		FUNC3(&block_group->lock);
	}

	return ret;
}