#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
struct TYPE_6__ {void* tqent_arg; int /*<<< orphan*/ * tqent_func; struct TYPE_6__* tqent_next; struct TYPE_6__* tqent_prev; int /*<<< orphan*/  tqent_flags; } ;
struct TYPE_5__ {int tq_flags; int /*<<< orphan*/  tq_lock; int /*<<< orphan*/  tq_dispatch_cv; TYPE_2__ tq_task; } ;
typedef  TYPE_1__ taskq_t ;
typedef  TYPE_2__ taskq_ent_t ;
typedef  int /*<<< orphan*/ * task_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TASKQ_DYNAMIC ; 
 int /*<<< orphan*/  TQENT_FLAG_PREALLOC ; 
 int TQ_FRONT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(taskq_t *tq, task_func_t func, void *arg, uint_t flags,
    taskq_ent_t *t)
{
	FUNC0(func != NULL);
	FUNC0(!(tq->tq_flags & TASKQ_DYNAMIC));

	/*
	 * Mark it as a prealloc'd task.  This is important
	 * to ensure that we don't free it later.
	 */
	t->tqent_flags |= TQENT_FLAG_PREALLOC;
	/*
	 * Enqueue the task to the underlying queue.
	 */
	FUNC2(&tq->tq_lock);

	if (flags & TQ_FRONT) {
		t->tqent_next = tq->tq_task.tqent_next;
		t->tqent_prev = &tq->tq_task;
	} else {
		t->tqent_next = &tq->tq_task;
		t->tqent_prev = tq->tq_task.tqent_prev;
	}
	t->tqent_next->tqent_prev = t;
	t->tqent_prev->tqent_next = t;
	t->tqent_func = func;
	t->tqent_arg = arg;
	FUNC1(&tq->tq_dispatch_cv);
	FUNC3(&tq->tq_lock);
}