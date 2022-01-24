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
struct TYPE_3__ {scalar_t__ bar_numin; scalar_t__ bar_nthr; int /*<<< orphan*/  bar_lock; int /*<<< orphan*/  bar_sem; } ;
typedef  TYPE_1__ barrier_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(barrier_t *bar)
{
	FUNC0(&bar->bar_lock);

	if (++bar->bar_numin < bar->bar_nthr) {
		FUNC1(&bar->bar_lock);
#ifdef illumos
		sema_wait(&bar->bar_sem);
#else
		FUNC3(&bar->bar_sem);
#endif

		return (0);

	} else {
		int i;

		/* reset for next use */
		bar->bar_numin = 0;
		for (i = 1; i < bar->bar_nthr; i++)
#ifdef illumos
			sema_post(&bar->bar_sem);
#else
			FUNC2(&bar->bar_sem);
#endif
		FUNC1(&bar->bar_lock);

		return (1);
	}
}