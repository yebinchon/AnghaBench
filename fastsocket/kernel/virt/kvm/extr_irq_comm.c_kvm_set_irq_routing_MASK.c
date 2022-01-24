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
typedef  unsigned int u32 ;
struct kvm_kernel_irq_routing_entry {int dummy; } ;
struct kvm_irq_routing_table {unsigned int nr_rt_entries; int** chip; int /*<<< orphan*/ * rt_entries; int /*<<< orphan*/ * map; } ;
struct kvm_irq_routing_entry {scalar_t__ gsi; scalar_t__ flags; } ;
struct kvm {int /*<<< orphan*/  irq_lock; struct kvm_irq_routing_table* irq_routing; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int KVM_IOAPIC_NUM_PINS ; 
 scalar_t__ KVM_MAX_IRQ_ROUTES ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_irq_routing_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,struct kvm_irq_routing_table*) ; 
 struct kvm_irq_routing_table* FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct kvm_irq_routing_table*,int /*<<< orphan*/ *,struct kvm_irq_routing_entry const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct kvm *kvm,
			const struct kvm_irq_routing_entry *ue,
			unsigned nr,
			unsigned flags)
{
	struct kvm_irq_routing_table *new, *old;
	u32 i, j, nr_rt_entries = 0;
	int r;

	for (i = 0; i < nr; ++i) {
		if (ue[i].gsi >= KVM_MAX_IRQ_ROUTES)
			return -EINVAL;
		nr_rt_entries = FUNC3(nr_rt_entries, ue[i].gsi);
	}

	nr_rt_entries += 1;

	new = FUNC2(sizeof(*new) + (nr_rt_entries * sizeof(struct hlist_head))
		      + (nr * sizeof(struct kvm_kernel_irq_routing_entry)),
		      GFP_KERNEL);

	if (!new)
		return -ENOMEM;

	new->rt_entries = (void *)&new->map[nr_rt_entries];

	new->nr_rt_entries = nr_rt_entries;
	for (i = 0; i < 3; i++)
		for (j = 0; j < KVM_IOAPIC_NUM_PINS; j++)
			new->chip[i][j] = -1;

	for (i = 0; i < nr; ++i) {
		r = -EINVAL;
		if (ue->flags)
			goto out;
		r = FUNC6(new, &new->rt_entries[i], ue);
		if (r)
			goto out;
		++ue;
	}

	FUNC4(&kvm->irq_lock);
	old = kvm->irq_routing;
	FUNC1(kvm, new);
	FUNC5(&kvm->irq_lock);

	FUNC7();

	new = old;
	r = 0;

out:
	FUNC0(new);
	return r;
}