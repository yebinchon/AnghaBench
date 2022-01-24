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
struct work_struct {int /*<<< orphan*/  entry; } ;
struct cpu_workqueue_struct {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_STRUCT_PENDING ; 
 struct cpu_workqueue_struct* FUNC0 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct work_struct*) ; 

__attribute__((used)) static int FUNC8(struct work_struct *work)
{
	struct cpu_workqueue_struct *cwq;
	int ret = -1;

	if (!FUNC6(WORK_STRUCT_PENDING, FUNC7(work)))
		return 0;

	/*
	 * The queueing is in progress, or it is already queued. Try to
	 * steal it from ->worklist without clearing WORK_STRUCT_PENDING.
	 */

	cwq = FUNC0(work);
	if (!cwq)
		return ret;

	FUNC4(&cwq->lock);
	if (!FUNC2(&work->entry)) {
		/*
		 * This work is queued, but perhaps we locked the wrong cwq.
		 * In that case we must see the new value after rmb(), see
		 * insert_work()->wmb().
		 */
		FUNC3();
		if (cwq == FUNC0(work)) {
			FUNC1(&work->entry);
			ret = 1;
		}
	}
	FUNC5(&cwq->lock);

	return ret;
}