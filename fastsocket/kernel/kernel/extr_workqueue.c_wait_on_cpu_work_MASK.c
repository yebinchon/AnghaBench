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
struct wq_barrier {int /*<<< orphan*/  done; } ;
struct work_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct cpu_workqueue_struct {int /*<<< orphan*/  lock; TYPE_1__ worklist; struct work_struct* current_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_workqueue_struct*,struct wq_barrier*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cpu_workqueue_struct *cwq,
				struct work_struct *work)
{
	struct wq_barrier barr;
	int running = 0;

	FUNC1(&cwq->lock);
	if (FUNC3(cwq->current_work == work)) {
		FUNC0(cwq, &barr, cwq->worklist.next);
		running = 1;
	}
	FUNC2(&cwq->lock);

	if (FUNC3(running))
		FUNC4(&barr.done);
}