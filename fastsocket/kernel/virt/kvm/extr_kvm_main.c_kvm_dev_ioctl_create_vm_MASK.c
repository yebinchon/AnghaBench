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
struct kvm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm*) ; 
 int FUNC1 (struct kvm*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,struct kvm*,int /*<<< orphan*/ ) ; 
 struct kvm* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  kvm_vm_fops ; 

__attribute__((used)) static int FUNC5(void)
{
	int fd;
	struct kvm *kvm;

	kvm = FUNC3();
	if (FUNC0(kvm))
		return FUNC1(kvm);
	fd = FUNC2("kvm-vm", &kvm_vm_fops, kvm, 0);
	if (fd < 0)
		FUNC4(kvm);

	return fd;
}