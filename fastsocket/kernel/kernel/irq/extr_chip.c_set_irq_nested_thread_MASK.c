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
struct irq_desc {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NESTED_THREAD ; 
 struct irq_desc* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(unsigned int irq, int nest)
{
	struct irq_desc *desc = FUNC0(irq);
	unsigned long flags;

	if (!desc)
		return;

	FUNC1(&desc->lock, flags);
	if (nest)
		desc->status |= IRQ_NESTED_THREAD;
	else
		desc->status &= ~IRQ_NESTED_THREAD;
	FUNC2(&desc->lock, flags);
}