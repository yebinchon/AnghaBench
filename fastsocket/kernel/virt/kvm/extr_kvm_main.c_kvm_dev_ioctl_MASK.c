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
struct file {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
 long EOPNOTSUPP ; 
 long KVM_API_VERSION ; 
#define  KVM_CHECK_EXTENSION 134 
#define  KVM_CREATE_VM 133 
#define  KVM_GET_API_VERSION 132 
#define  KVM_GET_VCPU_MMAP_SIZE 131 
#define  KVM_TRACE_DISABLE 130 
#define  KVM_TRACE_ENABLE 129 
#define  KVM_TRACE_PAUSE 128 
 long PAGE_SIZE ; 
 long FUNC0 (struct file*,unsigned int,unsigned long) ; 
 long FUNC1 (unsigned long) ; 
 long FUNC2 () ; 

__attribute__((used)) static long FUNC3(struct file *filp,
			  unsigned int ioctl, unsigned long arg)
{
	long r = -EINVAL;

	switch (ioctl) {
	case KVM_GET_API_VERSION:
		r = -EINVAL;
		if (arg)
			goto out;
		r = KVM_API_VERSION;
		break;
	case KVM_CREATE_VM:
		r = -EINVAL;
		if (arg)
			goto out;
		r = FUNC2();
		break;
	case KVM_CHECK_EXTENSION:
		r = FUNC1(arg);
		break;
	case KVM_GET_VCPU_MMAP_SIZE:
		r = -EINVAL;
		if (arg)
			goto out;
		r = PAGE_SIZE;     /* struct kvm_run */
#ifdef CONFIG_X86
		r += PAGE_SIZE;    /* pio data page */
#endif
#ifdef KVM_COALESCED_MMIO_PAGE_OFFSET
		r += PAGE_SIZE;    /* coalesced mmio ring page */
#endif
		break;
	case KVM_TRACE_ENABLE:
	case KVM_TRACE_PAUSE:
	case KVM_TRACE_DISABLE:
		r = -EOPNOTSUPP;
		break;
	default:
		return FUNC0(filp, ioctl, arg);
	}
out:
	return r;
}