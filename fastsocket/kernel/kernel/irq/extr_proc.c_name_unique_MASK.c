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
struct irqaction {scalar_t__ name; struct irqaction* next; } ;
struct irq_desc {int /*<<< orphan*/  lock; struct irqaction* action; } ;

/* Variables and functions */
 struct irq_desc* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned int irq, struct irqaction *new_action)
{
	struct irq_desc *desc = FUNC0(irq);
	struct irqaction *action;
	unsigned long flags;
	int ret = 1;

	FUNC1(&desc->lock, flags);
	for (action = desc->action ; action; action = action->next) {
		if ((action != new_action) && action->name &&
				!FUNC3(new_action->name, action->name)) {
			ret = 0;
			break;
		}
	}
	FUNC2(&desc->lock, flags);
	return ret;
}