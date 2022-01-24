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
struct TYPE_3__ {scalar_t__ tp_current; int tp_flags; int /*<<< orphan*/  tp_mutex; int /*<<< orphan*/  tp_busycv; } ;
typedef  TYPE_1__ tpool_t ;

/* Variables and functions */
 int TP_ABANDON ; 
 int TP_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	tpool_t *tpool = arg;

	if (--tpool->tp_current == 0 &&
	    (tpool->tp_flags & (TP_DESTROY | TP_ABANDON))) {
		if (tpool->tp_flags & TP_ABANDON) {
			FUNC2(&tpool->tp_mutex);
			FUNC0(tpool);
			return;
		}
		if (tpool->tp_flags & TP_DESTROY)
			(void) FUNC1(&tpool->tp_busycv);
	}
	FUNC2(&tpool->tp_mutex);
}