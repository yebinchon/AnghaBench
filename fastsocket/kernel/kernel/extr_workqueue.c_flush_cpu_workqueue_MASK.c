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
struct wq_barrier {int /*<<< orphan*/  done; } ;
struct cpu_workqueue_struct {scalar_t__ thread; int /*<<< orphan*/  lock; int /*<<< orphan*/  worklist; int /*<<< orphan*/ * current_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_workqueue_struct*,struct wq_barrier*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cpu_workqueue_struct *cwq)
{
	int active = 0;
	struct wq_barrier barr;

	FUNC0(cwq->thread == current);

	FUNC3(&cwq->lock);
	if (!FUNC2(&cwq->worklist) || cwq->current_work != NULL) {
		FUNC1(cwq, &barr, &cwq->worklist);
		active = 1;
	}
	FUNC4(&cwq->lock);

	if (active)
		FUNC5(&barr.done);

	return active;
}