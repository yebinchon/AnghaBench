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
struct irq_desc {int /*<<< orphan*/ * chip; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ IRQT_UNBOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_1__* irq_info ; 
 struct irq_desc* FUNC3 (int) ; 
 struct irq_desc* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_irq_chip ; 
 int nr_irqs ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  xen_dynamic_chip ; 

__attribute__((used)) static int FUNC6(void)
{
	int irq;
	struct irq_desc *desc;
	int start = FUNC2();

	if (start == nr_irqs)
		goto no_irqs;

	/* nr_irqs is a magic value. Must not use it.*/
	for (irq = nr_irqs-1; irq > start; irq--) {
		desc = FUNC3(irq);
		/* only 0->15 have init'd desc; handle irq > 16 */
		if (desc == NULL)
			break;
		if (desc->chip == &no_irq_chip)
			break;
		if (desc->chip != &xen_dynamic_chip)
			continue;
		if (irq_info[irq].type == IRQT_UNBOUND)
			break;
	}

	if (irq == start)
		goto no_irqs;

	desc = FUNC4(irq, 0);
	if (FUNC0(desc == NULL))
		return -1;

	FUNC1(irq);

	return irq;

no_irqs:
	FUNC5("No available IRQ to bind to: increase nr_irqs!\n");
}