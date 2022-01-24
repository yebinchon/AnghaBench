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
struct wb_writeback_work {long nr_pages; int range_cyclic; int for_background; int /*<<< orphan*/  sync_mode; } ;
struct TYPE_2__ {scalar_t__ task; } ;
struct backing_dev_info {TYPE_1__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct backing_dev_info*,struct wb_writeback_work*) ; 
 struct wb_writeback_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct backing_dev_info *bdi, long nr_pages,
		bool range_cyclic, bool for_background)
{
	struct wb_writeback_work *work;

	/*
	 * This is WB_SYNC_NONE writeback, so if allocation fails just
	 * wakeup the thread for old dirty data writeback
	 */
	work = FUNC1(sizeof(*work), GFP_ATOMIC);
	if (!work) {
		if (bdi->wb.task) {
			FUNC2(bdi);
			FUNC3(bdi->wb.task);
		}
		return;
	}

	work->sync_mode	= WB_SYNC_NONE;
	work->nr_pages	= nr_pages;
	work->range_cyclic = range_cyclic;
	work->for_background = for_background;

	FUNC0(bdi, work);
}