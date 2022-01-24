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
struct wb_writeback_work {int /*<<< orphan*/  list; } ;
struct bdi_writeback {scalar_t__ task; } ;
struct backing_dev_info {struct bdi_writeback wb; int /*<<< orphan*/  wb_list; int /*<<< orphan*/  wb_lock; int /*<<< orphan*/  work_list; } ;
struct TYPE_3__ {scalar_t__ task; } ;
struct TYPE_4__ {TYPE_1__ wb; } ;

/* Variables and functions */
 TYPE_2__ default_backing_dev_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct backing_dev_info*,struct wb_writeback_work*) ; 
 int /*<<< orphan*/  FUNC5 (struct backing_dev_info*,struct wb_writeback_work*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct backing_dev_info *bdi,
		struct wb_writeback_work *work)
{
	FUNC5(bdi, work);

	FUNC2(&bdi->wb_lock);
	FUNC0(&work->list, &bdi->work_list);
	FUNC3(&bdi->wb_lock);

	/*
	 * If the default thread isn't there, make sure we add it. When
	 * it gets created and wakes up, we'll run this work.
	 */
	if (FUNC6(FUNC1(&bdi->wb_list))) {
		 FUNC4(bdi, work);
		FUNC7(default_backing_dev_info.wb.task);
	} else {
		struct bdi_writeback *wb = &bdi->wb;

		if (wb->task)
			FUNC7(wb->task);
	}
}