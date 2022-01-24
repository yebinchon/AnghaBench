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
struct irq_info {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IRQT_UNBOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* evtchn_to_irq ; 
 struct irq_info* FUNC4 (int) ; 
 int /*<<< orphan*/ * irq_info ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(int evtchn, int irq)
{
	struct irq_info *info = FUNC4(irq);

	/* Make sure the irq is masked, since the new event channel
	   will also be masked. */
	FUNC2(irq);

	FUNC7(&irq_mapping_update_lock);

	/* After resume the irq<->evtchn mappings are all cleared out */
	FUNC0(evtchn_to_irq[evtchn] != -1);
	/* Expect irq to have been bound before,
	   so there should be a proper type */
	FUNC0(info->type == IRQT_UNBOUND);

	evtchn_to_irq[evtchn] = irq;
	irq_info[irq] = FUNC6(evtchn);

	FUNC8(&irq_mapping_update_lock);

	/* new event channels are always bound to cpu 0 */
	FUNC5(irq, FUNC1(0));

	/* Unmask the event channel. */
	FUNC3(irq);
}