#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int mount_opt; int /*<<< orphan*/  caching_workers; int /*<<< orphan*/  extent_commit_sem; int /*<<< orphan*/  caching_block_groups; int /*<<< orphan*/  extent_root; } ;
struct TYPE_4__ {int /*<<< orphan*/  func; } ;
struct btrfs_caching_control {TYPE_2__ work; int /*<<< orphan*/  list; int /*<<< orphan*/  count; int /*<<< orphan*/  wait; int /*<<< orphan*/  progress; struct btrfs_block_group_cache* block_group; int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_block_group_cache {scalar_t__ cached; int /*<<< orphan*/  lock; struct btrfs_caching_control* caching_ctl; scalar_t__ last_byte_to_unpin; TYPE_1__ key; struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_FAST ; 
 scalar_t__ BTRFS_CACHE_FINISHED ; 
 scalar_t__ BTRFS_CACHE_NO ; 
 void* BTRFS_CACHE_STARTED ; 
 int BTRFS_MOUNT_SPACE_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_caching_control*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  caching_thread ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_caching_control*) ; 
 struct btrfs_caching_control* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct btrfs_fs_info*,struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_caching_control*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct btrfs_block_group_cache *cache,
			     struct btrfs_trans_handle *trans,
			     struct btrfs_root *root,
			     int load_cache_only)
{
	FUNC0(wait);
	struct btrfs_fs_info *fs_info = cache->fs_info;
	struct btrfs_caching_control *caching_ctl;
	int ret = 0;

	caching_ctl = FUNC12(sizeof(*caching_ctl), GFP_NOFS);
	if (!caching_ctl)
		return -ENOMEM;

	FUNC1(&caching_ctl->list);
	FUNC15(&caching_ctl->mutex);
	FUNC10(&caching_ctl->wait);
	caching_ctl->block_group = cache;
	caching_ctl->progress = cache->key.objectid;
	FUNC4(&caching_ctl->count, 1);
	caching_ctl->work.func = caching_thread;

	FUNC19(&cache->lock);
	/*
	 * This should be a rare occasion, but this could happen I think in the
	 * case where one thread starts to load the space cache info, and then
	 * some other thread starts a transaction commit which tries to do an
	 * allocation while the other thread is still loading the space cache
	 * info.  The previous loop should have kept us from choosing this block
	 * group, but if we've moved to the state where we will wait on caching
	 * block groups we need to first check if we're doing a fast load here,
	 * so we can wait for it to finish, otherwise we could end up allocating
	 * from a block group who's cache gets evicted for one reason or
	 * another.
	 */
	while (cache->cached == BTRFS_CACHE_FAST) {
		struct btrfs_caching_control *ctl;

		ctl = cache->caching_ctl;
		FUNC3(&ctl->count);
		FUNC16(&ctl->wait, &wait, TASK_UNINTERRUPTIBLE);
		FUNC20(&cache->lock);

		FUNC18();

		FUNC8(&ctl->wait, &wait);
		FUNC17(ctl);
		FUNC19(&cache->lock);
	}

	if (cache->cached != BTRFS_CACHE_NO) {
		FUNC20(&cache->lock);
		FUNC11(caching_ctl);
		return 0;
	}
	FUNC2(cache->caching_ctl);
	cache->caching_ctl = caching_ctl;
	cache->cached = BTRFS_CACHE_FAST;
	FUNC20(&cache->lock);

	/*
	 * We can't do the read from on-disk cache during a commit since we need
	 * to have the normal tree locking.  Also if we are currently trying to
	 * allocate blocks for the tree root we can't do the fast caching since
	 * we likely hold important locks.
	 */
	if (fs_info->mount_opt & BTRFS_MOUNT_SPACE_CACHE) {
		ret = FUNC14(fs_info, cache);

		FUNC19(&cache->lock);
		if (ret == 1) {
			cache->caching_ctl = NULL;
			cache->cached = BTRFS_CACHE_FINISHED;
			cache->last_byte_to_unpin = (u64)-1;
		} else {
			if (load_cache_only) {
				cache->caching_ctl = NULL;
				cache->cached = BTRFS_CACHE_NO;
			} else {
				cache->cached = BTRFS_CACHE_STARTED;
			}
		}
		FUNC20(&cache->lock);
		FUNC22(&caching_ctl->wait);
		if (ret == 1) {
			FUNC17(caching_ctl);
			FUNC9(fs_info->extent_root, cache);
			return 0;
		}
	} else {
		/*
		 * We are not going to do the fast caching, set cached to the
		 * appropriate value and wakeup any waiters.
		 */
		FUNC19(&cache->lock);
		if (load_cache_only) {
			cache->caching_ctl = NULL;
			cache->cached = BTRFS_CACHE_NO;
		} else {
			cache->cached = BTRFS_CACHE_STARTED;
		}
		FUNC20(&cache->lock);
		FUNC22(&caching_ctl->wait);
	}

	if (load_cache_only) {
		FUNC17(caching_ctl);
		return 0;
	}

	FUNC7(&fs_info->extent_commit_sem);
	FUNC3(&caching_ctl->count);
	FUNC13(&caching_ctl->list, &fs_info->caching_block_groups);
	FUNC21(&fs_info->extent_commit_sem);

	FUNC5(cache);

	FUNC6(&fs_info->caching_workers, &caching_ctl->work);

	return ret;
}