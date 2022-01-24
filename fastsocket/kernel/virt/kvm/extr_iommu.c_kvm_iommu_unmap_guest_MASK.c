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
struct TYPE_2__ {struct iommu_domain* iommu_domain; } ;
struct kvm {int /*<<< orphan*/  slots_lock; TYPE_1__ arch; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct kvm *kvm)
{
	struct iommu_domain *domain = kvm->arch.iommu_domain;

	/* check if iommu exists and in use */
	if (!domain)
		return 0;

	FUNC2(&kvm->slots_lock);
	FUNC1(kvm);
	kvm->arch.iommu_domain = NULL;
	FUNC3(&kvm->slots_lock);

	FUNC0(domain);
	return 0;
}