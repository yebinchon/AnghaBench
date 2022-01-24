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
struct kvm {int /*<<< orphan*/  srcu; struct kvm_io_bus** buses; } ;
typedef  enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_io_bus*) ; 
 struct kvm_io_bus* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_io_bus*,struct kvm_io_bus*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_io_bus*,struct kvm_io_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct kvm *kvm, enum kvm_bus bus_idx,
			      struct kvm_io_device *dev)
{
	int i, r;
	struct kvm_io_bus *new_bus, *bus;

	new_bus = FUNC1(sizeof(struct kvm_io_bus), GFP_KERNEL);
	if (!new_bus)
		return -ENOMEM;

	bus = kvm->buses[bus_idx];
	FUNC2(new_bus, bus, sizeof(struct kvm_io_bus));

	r = -ENOENT;
	for (i = 0; i < new_bus->dev_count; i++)
		if (new_bus->devs[i] == dev) {
			r = 0;
			new_bus->devs[i] = new_bus->devs[--new_bus->dev_count];
			break;
		}

	if (r) {
		FUNC0(new_bus);
		return r;
	}

	FUNC3(kvm->buses[bus_idx], new_bus);
	FUNC4(&kvm->srcu);
	FUNC0(bus);
	return r;
}