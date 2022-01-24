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
struct clocksource {scalar_t__ (* enable ) (struct clocksource*) ;int /*<<< orphan*/  (* disable ) (struct clocksource*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct clocksource* clock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC1 (struct clocksource*) ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC2 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(void *data)
{
	struct clocksource *new, *old;
	unsigned long flags;

	new = (struct clocksource *) data;

	FUNC5(&timekeeper.lock, flags);

	FUNC3();
	if (!new->enable || new->enable(new) == 0) {
		old = timekeeper.clock;
		FUNC2(new);
		if (old->disable)
			old->disable(old);
	}
	FUNC4(true);

	FUNC6(&timekeeper.lock, flags);

	return 0;
}