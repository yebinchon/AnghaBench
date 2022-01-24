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
struct kvm_memory_slot {unsigned long base_gfn; scalar_t__ dirty_bitmap; } ;
struct kvm {int dummy; } ;
typedef  unsigned long gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

void FUNC2(struct kvm *kvm, struct kvm_memory_slot *memslot,
			     gfn_t gfn)
{
	if (memslot && memslot->dirty_bitmap) {
		unsigned long rel_gfn = gfn - memslot->base_gfn;

		/* avoid RMW */
		if (!FUNC1(rel_gfn, memslot->dirty_bitmap))
			FUNC0(rel_gfn, memslot->dirty_bitmap);
	}
}