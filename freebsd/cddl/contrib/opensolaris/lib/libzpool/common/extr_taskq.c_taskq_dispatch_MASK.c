#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int taskqid_t ;
struct TYPE_7__ {scalar_t__ tqent_flags; void* tqent_arg; int /*<<< orphan*/  (* tqent_func ) (void*) ;struct TYPE_7__* tqent_next; struct TYPE_7__* tqent_prev; } ;
struct TYPE_6__ {int tq_flags; int /*<<< orphan*/  tq_lock; int /*<<< orphan*/  tq_dispatch_cv; TYPE_2__ tq_task; } ;
typedef  TYPE_1__ taskq_t ;
typedef  TYPE_2__ taskq_ent_t ;
typedef  int /*<<< orphan*/  (* task_func_t ) (void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TASKQ_ACTIVE ; 
 int TQ_FRONT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ taskq_now ; 

taskqid_t
FUNC5(taskq_t *tq, task_func_t func, void *arg, uint_t tqflags)
{
	taskq_ent_t *t;

	if (taskq_now) {
		func(arg);
		return (1);
	}

	FUNC2(&tq->tq_lock);
	FUNC0(tq->tq_flags & TASKQ_ACTIVE);
	if ((t = FUNC4(tq, tqflags)) == NULL) {
		FUNC3(&tq->tq_lock);
		return (0);
	}
	if (tqflags & TQ_FRONT) {
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
	t->tqent_flags = 0;
	FUNC1(&tq->tq_dispatch_cv);
	FUNC3(&tq->tq_lock);
	return (1);
}