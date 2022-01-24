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
struct TYPE_5__ {scalar_t__ tp_current; int /*<<< orphan*/  tp_mutex; int /*<<< orphan*/  tp_busycv; int /*<<< orphan*/  tp_waitcv; int /*<<< orphan*/  tp_flags; TYPE_2__* tp_active; int /*<<< orphan*/  tp_workcv; } ;
typedef  TYPE_1__ tpool_t ;
struct TYPE_6__ {int /*<<< orphan*/  tpa_tid; struct TYPE_6__* tpa_next; } ;
typedef  TYPE_2__ tpool_active_t ;
typedef  int /*<<< orphan*/  _Voidfp ;

/* Variables and functions */
 int /*<<< orphan*/  TP_DESTROY ; 
 int /*<<< orphan*/  TP_SUSPEND ; 
 int /*<<< orphan*/  TP_WAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ pthread_mutex_unlock ; 

void
FUNC7(tpool_t *tpool)
{
	tpool_active_t *activep;

	FUNC6(&tpool->tp_mutex);
	FUNC3((_Voidfp)pthread_mutex_unlock, &tpool->tp_mutex);

	/* mark the pool as being destroyed; wakeup idle workers */
	tpool->tp_flags |= TP_DESTROY;
	tpool->tp_flags &= ~TP_SUSPEND;
	(void) FUNC4(&tpool->tp_workcv);

	/* cancel all active workers */
	for (activep = tpool->tp_active; activep; activep = activep->tpa_next)
		(void) FUNC1(activep->tpa_tid);

	/* wait for all active workers to finish */
	while (tpool->tp_active != NULL) {
		tpool->tp_flags |= TP_WAIT;
		(void) FUNC5(&tpool->tp_waitcv, &tpool->tp_mutex);
	}

	/* the last worker to terminate will wake us up */
	while (tpool->tp_current != 0)
		(void) FUNC5(&tpool->tp_busycv, &tpool->tp_mutex);

	FUNC2(1);	/* pthread_mutex_unlock(&tpool->tp_mutex); */
	FUNC0(tpool);
}