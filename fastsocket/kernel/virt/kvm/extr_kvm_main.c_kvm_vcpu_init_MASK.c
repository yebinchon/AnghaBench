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
struct page {int dummy; } ;
struct kvm_vcpu {int cpu; unsigned int vcpu_id; int preempted; scalar_t__ run; int /*<<< orphan*/  wq; int /*<<< orphan*/ * pid; struct kvm* kvm; int /*<<< orphan*/  mutex; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct page*) ; 

int FUNC8(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
{
	struct page *page;
	int r;

	FUNC6(&vcpu->mutex);
	vcpu->cpu = -1;
	vcpu->kvm = kvm;
	vcpu->vcpu_id = id;
	vcpu->pid = NULL;
	FUNC2(&vcpu->wq);

	page = FUNC0(GFP_KERNEL | __GFP_ZERO);
	if (!page) {
		r = -ENOMEM;
		goto fail;
	}
	vcpu->run = FUNC7(page);

	FUNC5(vcpu, false);
	FUNC4(vcpu, false);
	vcpu->preempted = false;

	r = FUNC3(vcpu);
	if (r < 0)
		goto fail_free_run;
	return 0;

fail_free_run:
	FUNC1((unsigned long)vcpu->run);
fail:
	return r;
}