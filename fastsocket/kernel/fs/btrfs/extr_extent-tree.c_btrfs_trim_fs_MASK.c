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
typedef  scalar_t__ u64 ;
struct fstrim_range {scalar_t__ len; scalar_t__ start; scalar_t__ minlen; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_root; int /*<<< orphan*/  super_copy; } ;
struct TYPE_2__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {TYPE_1__ key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*) ; 
 struct btrfs_block_group_cache* FUNC1 (struct btrfs_fs_info*,scalar_t__) ; 
 struct btrfs_block_group_cache* FUNC2 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct btrfs_block_group_cache*,int /*<<< orphan*/ *,struct btrfs_root*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 struct btrfs_block_group_cache* FUNC9 (int /*<<< orphan*/ ,struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_block_group_cache*) ; 

int FUNC11(struct btrfs_root *root, struct fstrim_range *range)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_block_group_cache *cache = NULL;
	u64 group_trimmed;
	u64 start;
	u64 end;
	u64 trimmed = 0;
	u64 total_bytes = FUNC4(fs_info->super_copy);
	int ret = 0;

	/*
	 * try to trim all FS space, our block group may start from non-zero.
	 */
	if (range->len == total_bytes)
		cache = FUNC2(fs_info, range->start);
	else
		cache = FUNC1(fs_info, range->start);

	while (cache) {
		if (cache->key.objectid >= (range->start + range->len)) {
			FUNC3(cache);
			break;
		}

		start = FUNC7(range->start, cache->key.objectid);
		end = FUNC8(range->start + range->len,
				cache->key.objectid + cache->key.offset);

		if (end - start >= range->minlen) {
			if (!FUNC0(cache)) {
				ret = FUNC6(cache, NULL, root, 0);
				if (!ret)
					FUNC10(cache);
			}
			ret = FUNC5(cache,
						     &group_trimmed,
						     start,
						     end,
						     range->minlen);

			trimmed += group_trimmed;
			if (ret) {
				FUNC3(cache);
				break;
			}
		}

		cache = FUNC9(fs_info->tree_root, cache);
	}

	range->len = trimmed;
	return ret;
}