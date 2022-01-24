#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tp_mutex; int /*<<< orphan*/  tp_waitcv; int /*<<< orphan*/  tp_flags; int /*<<< orphan*/ * tp_active; int /*<<< orphan*/ * tp_head; } ;
typedef  TYPE_1__ tpool_t ;
typedef  int /*<<< orphan*/  _Voidfp ;

/* Variables and functions */
 int /*<<< orphan*/  TP_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ pthread_mutex_unlock ; 

void
FUNC4(tpool_t *tpool)
{

	FUNC3(&tpool->tp_mutex);
	FUNC1((_Voidfp)pthread_mutex_unlock, &tpool->tp_mutex);
	while (tpool->tp_head != NULL || tpool->tp_active != NULL) {
		tpool->tp_flags |= TP_WAIT;
		(void) FUNC2(&tpool->tp_waitcv, &tpool->tp_mutex);
	}
	FUNC0(1);	/* pthread_mutex_unlock(&tpool->tp_mutex); */
}