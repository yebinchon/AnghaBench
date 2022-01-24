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
struct bdi_writeback {int /*<<< orphan*/ * task; int /*<<< orphan*/  list; struct backing_dev_info* bdi; } ;
struct backing_dev_info {int /*<<< orphan*/  work_list; int /*<<< orphan*/  wb_lock; int /*<<< orphan*/  state; int /*<<< orphan*/  bdi_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_pending ; 
 int /*<<< orphan*/  bdi_list ; 
 int /*<<< orphan*/  bdi_lock ; 
 int /*<<< orphan*/  FUNC0 (struct backing_dev_info*,struct bdi_writeback*) ; 
 int FUNC1 (struct bdi_writeback*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bdi_writeback*,int) ; 

__attribute__((used)) static int FUNC13(void *ptr)
{
	struct bdi_writeback *wb = ptr;
	struct backing_dev_info *bdi = wb->bdi;
	int ret;

	/*
	 * Add us to the active bdi_list
	 */
	FUNC8(&bdi_lock);
	FUNC3(&bdi->bdi_list, &bdi_list);
	FUNC10(&bdi_lock);

	FUNC0(bdi, wb);

	/*
	 * Clear pending bit and wakeup anybody waiting to tear us down
	 */
	FUNC2(BDI_pending, &bdi->state);
	FUNC6();
	FUNC11(&bdi->state, BDI_pending);

	ret = FUNC1(wb);

	/*
	 * Remove us from the list
	 */
	FUNC7(&bdi->wb_lock);
	FUNC4(&wb->list);
	FUNC9(&bdi->wb_lock);

	/*
	 * Flush any work that raced with us exiting. No new work
	 * will be added, since this bdi isn't discoverable anymore.
	 */
	if (!FUNC5(&bdi->work_list))
		FUNC12(wb, 1);

	wb->task = NULL;
	return ret;
}