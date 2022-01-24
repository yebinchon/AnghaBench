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
struct btrfs_fs_info {int /*<<< orphan*/  pinned_extents; } ;
struct btrfs_block_group_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXTENT_DIRTY ; 
 int EXTENT_UPTODATE ; 
 int FUNC1 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static u64 FUNC3(struct btrfs_block_group_cache *block_group,
			      struct btrfs_fs_info *info, u64 start, u64 end)
{
	u64 extent_start, extent_end, size, total_added = 0;
	int ret;

	while (start < end) {
		ret = FUNC2(info->pinned_extents, start,
					    &extent_start, &extent_end,
					    EXTENT_DIRTY | EXTENT_UPTODATE);
		if (ret)
			break;

		if (extent_start <= start) {
			start = extent_end + 1;
		} else if (extent_start > start && extent_start < end) {
			size = extent_start - start;
			total_added += size;
			ret = FUNC1(block_group, start,
						   size);
			FUNC0(ret); /* -ENOMEM or logic error */
			start = extent_end + 1;
		} else {
			break;
		}
	}

	if (start < end) {
		size = end - start;
		total_added += size;
		ret = FUNC1(block_group, start, size);
		FUNC0(ret); /* -ENOMEM or logic error */
	}

	return total_added;
}