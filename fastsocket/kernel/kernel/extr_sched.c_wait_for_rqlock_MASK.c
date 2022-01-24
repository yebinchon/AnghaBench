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
struct rq {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct rq* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	struct rq *rq = FUNC0();

	/*
	 * The setting of TASK_RUNNING by try_to_wake_up() may be delayed
	 * when the following two conditions become true.
	 *   - There is race condition of mmap_sem (It is acquired by
	 *     exit_mm()), and
	 *   - SMI occurs before setting TASK_RUNINNG.
	 *     (or hypervisor of virtual machine switches to other guest)
	 *  As a result, we may become TASK_RUNNING after becoming TASK_DEAD
	 *
	 * To avoid it, we have to wait for releasing rq lock which
	 * is held by try_to_wake_up()
	 */
	FUNC1();
	FUNC2(&rq->lock);
}