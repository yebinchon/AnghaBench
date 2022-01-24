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
struct TYPE_2__ {int vector; int trig_mode; int /*<<< orphan*/  mask; scalar_t__ remote_irr; } ;
union kvm_ioapic_redirect_entry {TYPE_1__ fields; } ;
struct kvm_ioapic {int irr; int /*<<< orphan*/  lock; int /*<<< orphan*/  kvm; union kvm_ioapic_redirect_entry* redirtbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IOAPIC_LEVEL_TRIG ; 
 int IOAPIC_NUM_PINS ; 
 int /*<<< orphan*/  KVM_IRQCHIP_IOAPIC ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_ioapic*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct kvm_ioapic *ioapic, int vector,
				     int trigger_mode)
{
	int i;

	for (i = 0; i < IOAPIC_NUM_PINS; i++) {
		union kvm_ioapic_redirect_entry *ent = &ioapic->redirtbl[i];

		if (ent->fields.vector != vector)
			continue;

		/*
		 * We are dropping lock while calling ack notifiers because ack
		 * notifier callbacks for assigned devices call into IOAPIC
		 * recursively. Since remote_irr is cleared only after call
		 * to notifiers if the same vector will be delivered while lock
		 * is dropped it will be put into irr and will be delivered
		 * after ack notifier returns.
		 */
		FUNC4(&ioapic->lock);
		FUNC2(ioapic->kvm, KVM_IRQCHIP_IOAPIC, i);
		FUNC3(&ioapic->lock);

		if (trigger_mode != IOAPIC_LEVEL_TRIG)
			continue;

		FUNC0(ent->fields.trig_mode == IOAPIC_LEVEL_TRIG);
		ent->fields.remote_irr = 0;
		if (!ent->fields.mask && (ioapic->irr & (1 << i)))
			FUNC1(ioapic, i);
	}
}