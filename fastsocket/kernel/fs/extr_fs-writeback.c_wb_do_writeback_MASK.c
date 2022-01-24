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
struct wb_writeback_work {scalar_t__ done; int /*<<< orphan*/  sync_mode; } ;
struct bdi_writeback {struct backing_dev_info* bdi; } ;
struct backing_dev_info {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_writeback_running ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct wb_writeback_work* FUNC2 (struct backing_dev_info*,struct bdi_writeback*) ; 
 int /*<<< orphan*/  FUNC3 (struct wb_writeback_work*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (struct backing_dev_info*,struct wb_writeback_work*) ; 
 scalar_t__ FUNC7 (struct bdi_writeback*) ; 
 scalar_t__ FUNC8 (struct bdi_writeback*,struct wb_writeback_work*) ; 

long FUNC9(struct bdi_writeback *wb, int force_wait)
{
	struct backing_dev_info *bdi = wb->bdi;
	struct wb_writeback_work *work;
	long wrote = 0;

	FUNC4(BDI_writeback_running, &wb->bdi->state);
	while ((work = FUNC2(bdi, wb)) != NULL) {
		/*
		 * Override sync mode, in case we must wait for completion
		 * because this thread is exiting now.
		 */
		if (force_wait)
			work->sync_mode = WB_SYNC_ALL;

		FUNC6(bdi, work);

		wrote += FUNC8(wb, work);

		/*
		 * Notify the caller of completion if this is a synchronous
		 * work item, otherwise just free it.
		 */
		if (work->done)
			FUNC1(work->done);
		else
			FUNC3(work);
	}
	FUNC5(wrote);

	/*
	 * Check for periodic writeback, kupdated() style
	 */
	wrote += FUNC7(wb);
	FUNC0(BDI_writeback_running, &wb->bdi->state);

	return wrote;
}