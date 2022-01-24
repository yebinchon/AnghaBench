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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_block_group_cache {scalar_t__ flags; TYPE_1__* space_info; int /*<<< orphan*/  ro; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHUNK_ALLOC_FORCE ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 struct btrfs_trans_handle* FUNC4 (struct btrfs_root*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct btrfs_root*,scalar_t__) ; 

int FUNC9(struct btrfs_root *root,
			     struct btrfs_block_group_cache *cache)

{
	struct btrfs_trans_handle *trans;
	u64 alloc_flags;
	int ret;

	FUNC0(cache->ro);

	trans = FUNC4(root);
	if (FUNC1(trans))
		return FUNC2(trans);

	alloc_flags = FUNC8(root, cache->flags);
	if (alloc_flags != cache->flags) {
		ret = FUNC5(trans, root, 2 * 1024 * 1024, alloc_flags,
				     CHUNK_ALLOC_FORCE);
		if (ret < 0)
			goto out;
	}

	ret = FUNC7(cache, 0);
	if (!ret)
		goto out;
	alloc_flags = FUNC6(root, cache->space_info->flags);
	ret = FUNC5(trans, root, 2 * 1024 * 1024, alloc_flags,
			     CHUNK_ALLOC_FORCE);
	if (ret < 0)
		goto out;
	ret = FUNC7(cache, 0);
out:
	FUNC3(trans, root);
	return ret;
}