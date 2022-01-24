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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int irq)
{
	/*
	 * Upstream has irq_move_irq and uses it in ack_dynirq; we do not.
	 * However, we know that in ack_dynirq the interrupt will never be
	 * masked (see mask_ack_irq and handle_edge_irq in kernel/irq/chip.c).
	 * So, use the same code twice except with move_native_irq there and
	 * move_masked_irq here.
	 */

	int evtchn = FUNC3(irq);

	FUNC2(irq);

	FUNC4(irq);

	if (FUNC0(evtchn))
		FUNC1(evtchn);
}