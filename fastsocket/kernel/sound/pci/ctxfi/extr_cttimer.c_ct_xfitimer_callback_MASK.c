#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ct_timer {int irq_handling; int /*<<< orphan*/  lock; scalar_t__ reprogram; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ct_timer*) ; 
 int FUNC1 (struct ct_timer*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ct_timer *atimer)
{
	int update;
	unsigned long flags;

	FUNC3(&atimer->lock, flags);
	atimer->irq_handling = 1;
	do {
		update = FUNC1(atimer, 1);
		FUNC4(&atimer->lock);
		if (update)
			FUNC0(atimer);
		FUNC2(&atimer->lock);
	} while (atimer->reprogram);
	atimer->irq_handling = 0;
	FUNC5(&atimer->lock, flags);
}