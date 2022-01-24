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

/* Variables and functions */
 int* evtchn_to_irq ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/ * irq_info ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xen_dynamic_chip ; 

int FUNC5(unsigned int evtchn)
{
	int irq;

	FUNC2(&irq_mapping_update_lock);

	irq = evtchn_to_irq[evtchn];

	if (irq == -1) {
		irq = FUNC0();

		FUNC4(irq, &xen_dynamic_chip,
					      handle_edge_irq, "event");

		evtchn_to_irq[evtchn] = irq;
		irq_info[irq] = FUNC1(evtchn);
	}

	FUNC3(&irq_mapping_update_lock);

	return irq;
}