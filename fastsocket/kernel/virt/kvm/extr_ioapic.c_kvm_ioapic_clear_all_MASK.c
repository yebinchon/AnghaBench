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
struct kvm_ioapic {int /*<<< orphan*/  lock; int /*<<< orphan*/ * irq_states; } ;

/* Variables and functions */
 int KVM_IOAPIC_NUM_PINS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct kvm_ioapic *ioapic, int irq_source_id)
{
	int i;

	FUNC1(&ioapic->lock);
	for (i = 0; i < KVM_IOAPIC_NUM_PINS; i++)
		FUNC0(irq_source_id, &ioapic->irq_states[i]);
	FUNC2(&ioapic->lock);
}