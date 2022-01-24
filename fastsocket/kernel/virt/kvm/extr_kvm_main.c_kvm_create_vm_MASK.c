#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct kvm_memslots {int dummy; } ;
struct kvm_io_bus {int dummy; } ;
struct kvm_coalesced_mmio_ring {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct kvm {int /*<<< orphan*/  vm_list; int /*<<< orphan*/  users_count; int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  requests_lock; int /*<<< orphan*/  mmu_lock; TYPE_2__* mm; struct kvm* memslots; int /*<<< orphan*/  srcu; struct kvm** buses; TYPE_1__ mmu_notifier; struct kvm_coalesced_mmio_ring* coalesced_mmio_ring; int /*<<< orphan*/  irq_ack_notifier_list; int /*<<< orphan*/  mask_notifier_list; } ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  mm_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kvm* FUNC0 (int) ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kvm*) ; 
 int KVM_NR_BUSES ; 
 int __GFP_ZERO ; 
 struct page* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*) ; 
 struct kvm* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm*) ; 
 int /*<<< orphan*/  kvm_lock ; 
 int /*<<< orphan*/  kvm_mmu_notifier_ops ; 
 void* FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_list ; 

__attribute__((used)) static struct kvm *FUNC23(void)
{
	int r = 0, i;
	struct kvm *kvm = FUNC11();
#ifdef KVM_COALESCED_MMIO_PAGE_OFFSET
	struct page *page;
#endif

	if (FUNC2(kvm))
		goto out;

	r = FUNC8();
	if (r)
		goto out_err_nodisable;

#ifdef CONFIG_HAVE_KVM_IRQCHIP
	INIT_HLIST_HEAD(&kvm->mask_notifier_list);
	INIT_HLIST_HEAD(&kvm->irq_ack_notifier_list);
#endif
	kvm->memslots = FUNC14(sizeof(struct kvm_memslots), GFP_KERNEL);
	if (!kvm->memslots) {
		FUNC10(kvm);
		return FUNC0(-ENOMEM);
	}

	r = FUNC9(&kvm->srcu);
	if (r) {
		FUNC10(kvm->memslots);
		FUNC10(kvm);
		return FUNC0(r);
	}

	for (i = 0; i < KVM_NR_BUSES; i++) {
		kvm->buses[i] = FUNC14(sizeof(struct kvm_io_bus),
					GFP_KERNEL);
		if (!kvm->buses[i]) {
			FUNC6(&kvm->srcu);
			FUNC10(kvm->memslots);
			FUNC10(kvm);
			return FUNC0(-ENOMEM);
		}
	}

#ifdef KVM_COALESCED_MMIO_PAGE_OFFSET
	page = alloc_page(GFP_KERNEL | __GFP_ZERO);
	if (!page) {
		for (i = 0; i < KVM_NR_BUSES; i++)
			kfree(kvm->buses[i]);
		cleanup_srcu_struct(&kvm->srcu);
		kfree(kvm->memslots);
		kfree(kvm);
		r = -ENOMEM;
		goto out_err;
	}
	kvm->coalesced_mmio_ring =
			(struct kvm_coalesced_mmio_ring *)page_address(page);
#endif

#if defined(CONFIG_MMU_NOTIFIER) && defined(KVM_ARCH_WANT_MMU_NOTIFIER)
	{
		kvm->mmu_notifier.ops = &kvm_mmu_notifier_ops;
		r = mmu_notifier_register(&kvm->mmu_notifier, current->mm);
		if (r) {
#ifdef KVM_COALESCED_MMIO_PAGE_OFFSET
			put_page(page);
#endif
			for (i = 0; i < KVM_NR_BUSES; i++)
				kfree(kvm->buses[i]);
			cleanup_srcu_struct(&kvm->srcu);
			kfree(kvm->memslots);
			kfree(kvm);
			goto out_err;
		}
	}
#endif

	kvm->mm = current->mm;
	FUNC4(&kvm->mm->mm_count);
	FUNC21(&kvm->mmu_lock);
	FUNC21(&kvm->requests_lock);
	FUNC13(kvm);
	FUNC17(&kvm->lock);
	FUNC17(&kvm->irq_lock);
	FUNC17(&kvm->slots_lock);
	FUNC5(&kvm->users_count, 1);
	FUNC20(&kvm_lock);
	FUNC15(&kvm->vm_list, &vm_list);
	FUNC22(&kvm_lock);
#ifdef KVM_COALESCED_MMIO_PAGE_OFFSET
	kvm_coalesced_mmio_init(kvm);
#endif
out:
	return kvm;

out_err:
	FUNC7();
out_err_nodisable:
	FUNC10(kvm);
	return FUNC0(r);
}