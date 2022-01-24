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
struct workqueue_struct {int /*<<< orphan*/  cpu_wq; } ;
struct cpu_workqueue_struct {int /*<<< orphan*/  more_work; int /*<<< orphan*/  worklist; int /*<<< orphan*/  lock; struct workqueue_struct* wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cpu_workqueue_struct* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cpu_workqueue_struct *
FUNC4(struct workqueue_struct *wq, int cpu)
{
	struct cpu_workqueue_struct *cwq = FUNC2(wq->cpu_wq, cpu);

	cwq->wq = wq;
	FUNC3(&cwq->lock);
	FUNC0(&cwq->worklist);
	FUNC1(&cwq->more_work);

	return cwq;
}