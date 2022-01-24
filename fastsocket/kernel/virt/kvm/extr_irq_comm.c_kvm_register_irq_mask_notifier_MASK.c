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
struct kvm_irq_mask_notifier {int irq; int /*<<< orphan*/  link; } ;
struct kvm {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  mask_notifier_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct kvm *kvm, int irq,
				    struct kvm_irq_mask_notifier *kimn)
{
	FUNC1(&kvm->irq_lock);
	kimn->irq = irq;
	FUNC0(&kimn->link, &kvm->mask_notifier_list);
	FUNC2(&kvm->irq_lock);
}