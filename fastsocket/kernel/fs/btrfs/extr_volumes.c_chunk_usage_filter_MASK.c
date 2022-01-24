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
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;
struct btrfs_block_group_cache {TYPE_1__ key; int /*<<< orphan*/  item; } ;
struct btrfs_balance_args {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct btrfs_block_group_cache* FUNC1 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_block_group_cache*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct btrfs_fs_info *fs_info, u64 chunk_offset,
			      struct btrfs_balance_args *bargs)
{
	struct btrfs_block_group_cache *cache;
	u64 chunk_used, user_thresh;
	int ret = 1;

	cache = FUNC1(fs_info, chunk_offset);
	chunk_used = FUNC0(&cache->item);

	user_thresh = FUNC3(cache->key.offset, bargs->usage);
	if (chunk_used < user_thresh)
		ret = 0;

	FUNC2(cache);
	return ret;
}