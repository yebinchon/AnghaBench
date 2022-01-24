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
struct TYPE_6__ {int tp_flags; scalar_t__ tp_idle; scalar_t__ tp_current; scalar_t__ tp_maximum; int /*<<< orphan*/  tp_mutex; int /*<<< orphan*/  tp_workcv; int /*<<< orphan*/  tp_njobs; TYPE_2__* tp_tail; TYPE_2__* tp_head; } ;
typedef  TYPE_1__ tpool_t ;
struct TYPE_7__ {void (* tpj_func ) (void*) ;struct TYPE_7__* tpj_next; void* tpj_arg; } ;
typedef  TYPE_2__ tpool_job_t ;

/* Variables and functions */
 int TP_SUSPEND ; 
 TYPE_2__* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(tpool_t *tpool, void (*func)(void *), void *arg)
{
	tpool_job_t *job;

	if ((job = FUNC0(1, sizeof (*job))) == NULL)
		return (-1);
	job->tpj_next = NULL;
	job->tpj_func = func;
	job->tpj_arg = arg;

	FUNC3(&tpool->tp_mutex);

	if (tpool->tp_head == NULL)
		tpool->tp_head = job;
	else
		tpool->tp_tail->tpj_next = job;
	tpool->tp_tail = job;
	tpool->tp_njobs++;

	if (!(tpool->tp_flags & TP_SUSPEND)) {
		if (tpool->tp_idle > 0)
			(void) FUNC2(&tpool->tp_workcv);
		else if (tpool->tp_current < tpool->tp_maximum &&
		    FUNC1(tpool) == 0)
			tpool->tp_current++;
	}

	FUNC4(&tpool->tp_mutex);
	return (0);
}