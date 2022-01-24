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
struct wb_writeback_work {long nr_pages; int for_kupdate; int range_cyclic; int /*<<< orphan*/  sync_mode; } ;
struct bdi_writeback {unsigned long last_old_flush; } ;
struct TYPE_2__ {long nr_inodes; long nr_unused; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_UNSTABLE_NFS ; 
 int /*<<< orphan*/  WB_SYNC_NONE ; 
 int dirty_writeback_interval ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ inodes_stat ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 long FUNC4 (struct bdi_writeback*,struct wb_writeback_work*) ; 

__attribute__((used)) static long FUNC5(struct bdi_writeback *wb)
{
	unsigned long expired;
	long nr_pages;

	/*
	 * When set to zero, disable periodic writeback
	 */
	if (!dirty_writeback_interval)
		return 0;

	expired = wb->last_old_flush +
			FUNC1(dirty_writeback_interval * 10);
	if (FUNC2(jiffies, expired))
		return 0;

	wb->last_old_flush = jiffies;
	nr_pages = FUNC0(NR_FILE_DIRTY) +
			FUNC0(NR_UNSTABLE_NFS) +
			(inodes_stat.nr_inodes - inodes_stat.nr_unused);

	if (nr_pages) {
		struct wb_writeback_work work = {
			.nr_pages	= nr_pages,
			.sync_mode	= WB_SYNC_NONE,
			.for_kupdate	= 1,
			.range_cyclic	= 1,
		};

		nr_pages = FUNC4(wb, &work);
		FUNC3(nr_pages);
		return nr_pages;
	}

	return 0;
}