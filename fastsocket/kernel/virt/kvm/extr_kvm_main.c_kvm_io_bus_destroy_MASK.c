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
struct kvm_io_bus {int dev_count; struct kvm_io_device** devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_io_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_io_device*) ; 

__attribute__((used)) static void FUNC2(struct kvm_io_bus *bus)
{
	int i;

	for (i = 0; i < bus->dev_count; i++) {
		struct kvm_io_device *pos = bus->devs[i];

		FUNC1(pos);
	}
	FUNC0(bus);
}