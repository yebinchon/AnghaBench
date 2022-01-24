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
struct TYPE_2__ {scalar_t__ trig_mode; int remote_irr; int /*<<< orphan*/  mask; } ;
union kvm_ioapic_redirect_entry {TYPE_1__ fields; } ;
struct kvm_ioapic {union kvm_ioapic_redirect_entry* redirtbl; } ;

/* Variables and functions */
 scalar_t__ IOAPIC_LEVEL_TRIG ; 
 int FUNC0 (struct kvm_ioapic*,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct kvm_ioapic *ioapic, unsigned int idx)
{
	union kvm_ioapic_redirect_entry *pent;
	int injected = -1;

	pent = &ioapic->redirtbl[idx];

	if (!pent->fields.mask) {
		injected = FUNC0(ioapic, idx);
		if (injected && pent->fields.trig_mode == IOAPIC_LEVEL_TRIG)
			pent->fields.remote_irr = 1;
	}

	return injected;
}