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
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct TYPE_2__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {scalar_t__ pinned; scalar_t__ reserved; int /*<<< orphan*/  lock; TYPE_1__ key; int /*<<< orphan*/  ro; int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_GROUP_METADATA ; 
 scalar_t__ FUNC0 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct btrfs_block_group_cache* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

u64 FUNC9(struct btrfs_root *root,
			   u64 search_start, u64 search_hint, int owner)
{
	struct btrfs_block_group_cache *cache;
	u64 used;
	u64 last = FUNC6(search_hint, search_start);
	u64 group_start = 0;
	int full_search = 0;
	int factor = 9;
	int wrapped = 0;
again:
	while (1) {
		cache = FUNC2(root->fs_info, last);
		if (!cache)
			break;

		FUNC7(&cache->lock);
		last = cache->key.objectid + cache->key.offset;
		used = FUNC1(&cache->item);

		if ((full_search || !cache->ro) &&
		    FUNC0(cache, BTRFS_BLOCK_GROUP_METADATA)) {
			if (used + cache->pinned + cache->reserved <
			    FUNC5(cache->key.offset, factor)) {
				group_start = cache->key.objectid;
				FUNC8(&cache->lock);
				FUNC3(cache);
				goto found;
			}
		}
		FUNC8(&cache->lock);
		FUNC3(cache);
		FUNC4();
	}
	if (!wrapped) {
		last = search_start;
		wrapped = 1;
		goto again;
	}
	if (!full_search && factor < 10) {
		last = search_start;
		full_search = 1;
		factor = 10;
		goto again;
	}
found:
	return group_start;
}