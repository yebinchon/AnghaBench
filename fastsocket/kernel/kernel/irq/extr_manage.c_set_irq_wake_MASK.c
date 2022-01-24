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
struct irq_desc {scalar_t__ wake_depth; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 struct irq_desc* FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(unsigned int irq, unsigned int on)
{
	struct irq_desc *desc = FUNC1(irq);
	unsigned long flags;
	int ret = 0;

	/* wakeup-capable irqs can be shared between drivers that
	 * don't need to have the same sleep mode behaviors.
	 */
	FUNC3(&desc->lock, flags);
	if (on) {
		if (desc->wake_depth++ == 0) {
			ret = FUNC2(irq, on);
			if (ret)
				desc->wake_depth = 0;
			else
				desc->status |= IRQ_WAKEUP;
		}
	} else {
		if (desc->wake_depth == 0) {
			FUNC0(1, "Unbalanced IRQ %d wake disable\n", irq);
		} else if (--desc->wake_depth == 0) {
			ret = FUNC2(irq, on);
			if (ret)
				desc->wake_depth = 1;
			else
				desc->status &= ~IRQ_WAKEUP;
		}
	}

	FUNC4(&desc->lock, flags);
	return ret;
}