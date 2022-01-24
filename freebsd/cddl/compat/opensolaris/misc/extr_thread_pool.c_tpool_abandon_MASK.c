#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tp_current; int /*<<< orphan*/  tp_mutex; int /*<<< orphan*/  tp_workcv; int /*<<< orphan*/  tp_flags; } ;
typedef  TYPE_1__ tpool_t ;

/* Variables and functions */
 int /*<<< orphan*/  TP_ABANDON ; 
 int /*<<< orphan*/  TP_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(tpool_t *tpool)
{

	FUNC2(&tpool->tp_mutex);
	if (tpool->tp_current == 0) {
		/* no workers, just delete the pool */
		FUNC3(&tpool->tp_mutex);
		FUNC0(tpool);
	} else {
		/* wake up all workers, last one will delete the pool */
		tpool->tp_flags |= TP_ABANDON;
		tpool->tp_flags &= ~TP_SUSPEND;
		(void) FUNC1(&tpool->tp_workcv);
		FUNC3(&tpool->tp_mutex);
	}
}