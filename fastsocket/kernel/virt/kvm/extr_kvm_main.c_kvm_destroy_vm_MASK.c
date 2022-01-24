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
struct mm_struct {int dummy; } ;
struct kvm {struct mm_struct* mm; int /*<<< orphan*/  mmu_notifier; int /*<<< orphan*/ * coalesced_mmio_ring; int /*<<< orphan*/ * buses; int /*<<< orphan*/  vm_list; } ;

/* Variables and functions */
 int KVM_NR_BUSES ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct kvm *kvm)
{
	int i;
	struct mm_struct *mm = kvm->mm;

	FUNC4(kvm);
	FUNC10(&kvm_lock);
	FUNC7(&kvm->vm_list);
	FUNC11(&kvm_lock);
	FUNC5(kvm);
	for (i = 0; i < KVM_NR_BUSES; i++)
		FUNC6(kvm->buses[i]);
#ifdef KVM_COALESCED_MMIO_PAGE_OFFSET
	if (kvm->coalesced_mmio_ring != NULL)
		free_page((unsigned long)kvm->coalesced_mmio_ring);
#endif
#if defined(CONFIG_MMU_NOTIFIER) && defined(KVM_ARCH_WANT_MMU_NOTIFIER)
	mmu_notifier_unregister(&kvm->mmu_notifier, kvm->mm);
#else
	FUNC3(kvm);
#endif
	FUNC2(kvm);
	FUNC1();
	FUNC8(mm);
}