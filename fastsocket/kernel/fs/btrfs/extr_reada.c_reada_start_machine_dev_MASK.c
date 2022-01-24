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
typedef  int u64 ;
typedef  int u32 ;
struct reada_extent {int logical; int blocksize; int nzones; int /*<<< orphan*/  lock; struct btrfs_device* scheduled_for; TYPE_2__** zones; int /*<<< orphan*/  refcnt; } ;
struct extent_buffer {int start; } ;
struct btrfs_fs_info {int /*<<< orphan*/  extent_root; int /*<<< orphan*/  reada_lock; } ;
struct btrfs_device {int reada_next; int /*<<< orphan*/  reada_in_flight; int /*<<< orphan*/  reada_extents; TYPE_1__* reada_curr_zone; } ;
struct TYPE_4__ {struct btrfs_device* device; } ;
struct TYPE_3__ {int end; } ;

/* Variables and functions */
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct extent_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,struct reada_extent*) ; 
 int FUNC6 (struct btrfs_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int,int,struct extent_buffer**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct btrfs_fs_info *fs_info,
				   struct btrfs_device *dev)
{
	struct reada_extent *re = NULL;
	int mirror_num = 0;
	struct extent_buffer *eb = NULL;
	u64 logical;
	u32 blocksize;
	int ret;
	int i;
	int need_kick = 0;

	FUNC8(&fs_info->reada_lock);
	if (dev->reada_curr_zone == NULL) {
		ret = FUNC6(dev);
		if (!ret) {
			FUNC9(&fs_info->reada_lock);
			return 0;
		}
	}
	/*
	 * FIXME currently we issue the reads one extent at a time. If we have
	 * a contiguous block of extents, we could also coagulate them or use
	 * plugging to speed things up
	 */
	ret = FUNC4(&dev->reada_extents, (void **)&re,
				     dev->reada_next >> PAGE_CACHE_SHIFT, 1);
	if (ret == 0 || re->logical >= dev->reada_curr_zone->end) {
		ret = FUNC6(dev);
		if (!ret) {
			FUNC9(&fs_info->reada_lock);
			return 0;
		}
		re = NULL;
		ret = FUNC4(&dev->reada_extents, (void **)&re,
					dev->reada_next >> PAGE_CACHE_SHIFT, 1);
	}
	if (ret == 0) {
		FUNC9(&fs_info->reada_lock);
		return 0;
	}
	dev->reada_next = re->logical + re->blocksize;
	FUNC3(&re->refcnt);

	FUNC9(&fs_info->reada_lock);

	/*
	 * find mirror num
	 */
	for (i = 0; i < re->nzones; ++i) {
		if (re->zones[i]->device == dev) {
			mirror_num = i + 1;
			break;
		}
	}
	logical = re->logical;
	blocksize = re->blocksize;

	FUNC8(&re->lock);
	if (re->scheduled_for == NULL) {
		re->scheduled_for = dev;
		need_kick = 1;
	}
	FUNC9(&re->lock);

	FUNC5(fs_info, re);

	if (!need_kick)
		return 0;

	FUNC1(&dev->reada_in_flight);
	ret = FUNC7(fs_info->extent_root, logical, blocksize,
			 mirror_num, &eb);
	if (ret)
		FUNC0(fs_info->extent_root, NULL, logical, ret);
	else if (eb)
		FUNC0(fs_info->extent_root, eb, eb->start, ret);

	if (eb)
		FUNC2(eb);

	return 1;

}