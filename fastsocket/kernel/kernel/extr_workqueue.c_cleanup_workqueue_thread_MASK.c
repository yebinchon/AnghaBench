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
struct cpu_workqueue_struct {int /*<<< orphan*/ * thread; TYPE_1__* wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  lockdep_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cpu_workqueue_struct *cwq)
{
	/*
	 * Our caller is either destroy_workqueue() or CPU_POST_DEAD,
	 * cpu_add_remove_lock protects cwq->thread.
	 */
	if (cwq->thread == NULL)
		return;

	FUNC2(&cwq->wq->lockdep_map);
	FUNC3(&cwq->wq->lockdep_map);

	FUNC0(cwq);
	/*
	 * If the caller is CPU_POST_DEAD and cwq->worklist was not empty,
	 * a concurrent flush_workqueue() can insert a barrier after us.
	 * However, in that case run_workqueue() won't return and check
	 * kthread_should_stop() until it flushes all work_struct's.
	 * When ->worklist becomes empty it is safe to exit because no
	 * more work_structs can be queued on this cwq: flush_workqueue
	 * checks list_empty(), and a "normal" queue_work() can't use
	 * a dead CPU.
	 */
	FUNC4(cwq->thread);
	FUNC1(cwq->thread);
	cwq->thread = NULL;
}