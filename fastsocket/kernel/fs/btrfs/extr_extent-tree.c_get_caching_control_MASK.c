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
struct btrfs_caching_control {int /*<<< orphan*/  count; } ;
struct btrfs_block_group_cache {scalar_t__ cached; int /*<<< orphan*/  lock; struct btrfs_caching_control* caching_ctl; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct btrfs_caching_control *
FUNC3(struct btrfs_block_group_cache *cache)
{
	struct btrfs_caching_control *ctl;

	FUNC1(&cache->lock);
	if (cache->cached != BTRFS_CACHE_STARTED) {
		FUNC2(&cache->lock);
		return NULL;
	}

	/* We're loading it the fast way, so we don't have a caching_ctl. */
	if (!cache->caching_ctl) {
		FUNC2(&cache->lock);
		return NULL;
	}

	ctl = cache->caching_ctl;
	FUNC0(&ctl->count);
	FUNC2(&cache->lock);
	return ctl;
}