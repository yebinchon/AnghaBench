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
struct kvm_io_device {int dummy; } ;
struct kvm_coalesced_mmio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_coalesced_mmio_dev*) ; 
 struct kvm_coalesced_mmio_dev* FUNC1 (struct kvm_io_device*) ; 

__attribute__((used)) static void FUNC2(struct kvm_io_device *this)
{
	struct kvm_coalesced_mmio_dev *dev = FUNC1(this);

	FUNC0(dev);
}