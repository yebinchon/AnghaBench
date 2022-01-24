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
struct reada_zone {scalar_t__ elems; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; TYPE_1__* device; } ;
struct reada_extent {unsigned long logical; int nzones; TYPE_2__* scheduled_for; struct reada_zone** zones; int /*<<< orphan*/  refcnt; } ;
struct btrfs_fs_info {int /*<<< orphan*/  reada_lock; int /*<<< orphan*/  reada_tree; } ;
struct TYPE_4__ {int /*<<< orphan*/  reada_in_flight; } ;
struct TYPE_3__ {int /*<<< orphan*/  reada_extents; } ;

/* Variables and functions */
 unsigned long PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct reada_extent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  reada_kref_dummy ; 
 int /*<<< orphan*/  reada_zone_release ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct btrfs_fs_info *fs_info,
			     struct reada_extent *re)
{
	int i;
	unsigned long index = re->logical >> PAGE_CACHE_SHIFT;

	FUNC5(&fs_info->reada_lock);
	if (!FUNC3(&re->refcnt, reada_kref_dummy)) {
		FUNC6(&fs_info->reada_lock);
		return;
	}

	FUNC4(&fs_info->reada_tree, index);
	for (i = 0; i < re->nzones; ++i) {
		struct reada_zone *zone = re->zones[i];

		FUNC4(&zone->device->reada_extents, index);
	}

	FUNC6(&fs_info->reada_lock);

	for (i = 0; i < re->nzones; ++i) {
		struct reada_zone *zone = re->zones[i];

		FUNC2(&zone->refcnt);
		FUNC5(&zone->lock);
		--zone->elems;
		if (zone->elems == 0) {
			/* no fs_info->reada_lock needed, as this can't be
			 * the last ref */
			FUNC3(&zone->refcnt, reada_zone_release);
		}
		FUNC6(&zone->lock);

		FUNC5(&fs_info->reada_lock);
		FUNC3(&zone->refcnt, reada_zone_release);
		FUNC6(&fs_info->reada_lock);
	}
	if (re->scheduled_for)
		FUNC0(&re->scheduled_for->reada_in_flight);

	FUNC1(re);
}