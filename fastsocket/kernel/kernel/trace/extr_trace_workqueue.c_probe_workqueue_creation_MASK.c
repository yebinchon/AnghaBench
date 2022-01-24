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
struct task_struct {int /*<<< orphan*/  pid; } ;
struct cpu_workqueue_stats {int cpu; int /*<<< orphan*/  list; int /*<<< orphan*/  pid; int /*<<< orphan*/  kref; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cpu_workqueue_stats* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct task_struct *wq_thread, int cpu)
{
	struct cpu_workqueue_stats *cws;
	unsigned long flags;

	FUNC1(cpu < 0);

	/* Workqueues are sometimes created in atomic context */
	cws = FUNC3(sizeof(struct cpu_workqueue_stats), GFP_ATOMIC);
	if (!cws) {
		FUNC5("trace_workqueue: not enough memory\n");
		return;
	}
	FUNC0(&cws->list);
	FUNC2(&cws->kref);
	cws->cpu = cpu;
	cws->pid = wq_thread->pid;

	FUNC6(&FUNC8(cpu)->lock, flags);
	FUNC4(&cws->list, &FUNC8(cpu)->list);
	FUNC7(&FUNC8(cpu)->lock, flags);
}