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
struct kvm_userspace_memory_region {scalar_t__ slot; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ KVM_MEMORY_SLOTS ; 
 int FUNC0 (struct kvm*,struct kvm_userspace_memory_region*,int) ; 

int FUNC1(struct kvm *kvm,
				   struct
				   kvm_userspace_memory_region *mem,
				   int user_alloc)
{
	if (mem->slot >= KVM_MEMORY_SLOTS)
		return -EINVAL;
	return FUNC0(kvm, mem, user_alloc);
}