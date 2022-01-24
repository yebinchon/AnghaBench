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
typedef  int u32 ;
struct pci_device_id {int driver_data; int /*<<< orphan*/  member_0; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
#define  PLX 128 
 struct pci_device_id* FUNC2 (struct pci_device_id const*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pci)
{
	enum { PEX811X, PI7C9X110 };
	static const struct pci_device_id bridge_ids[] = {
		{ FUNC1(PLX, 0x8111), .driver_data = PEX811X },
		{ FUNC1(PLX, 0x8112), .driver_data = PEX811X },
		{ FUNC0(0x12d8, 0xe110), .driver_data = PI7C9X110 },
		{ }
	};
	struct pci_dev *bridge;
	const struct pci_device_id *id;
	u32 tmp;

	if (!pci->bus || !pci->bus->self)
		return;
	bridge = pci->bus->self;

	id = FUNC2(bridge_ids, bridge);
	if (!id)
		return;

	switch (id->driver_data) {
	case PEX811X:	/* PLX PEX8111/PEX8112 PCIe/PCI bridge */
		FUNC3(bridge, 0x48, &tmp);
		tmp |= 1;	/* enable blind prefetching */
		tmp |= 1 << 11;	/* enable beacon generation */
		FUNC4(bridge, 0x48, tmp);

		FUNC4(bridge, 0x84, 0x0c);
		FUNC3(bridge, 0x88, &tmp);
		tmp &= ~(7 << 27);
		tmp |= 2 << 27;	/* set prefetch size to 128 bytes */
		FUNC4(bridge, 0x88, tmp);
		break;

	case PI7C9X110:	/* Pericom PI7C9X110 PCIe/PCI bridge */
		FUNC3(bridge, 0x40, &tmp);
		tmp |= 1;	/* park the PCI arbiter to the sound chip */
		FUNC4(bridge, 0x40, tmp);
		break;
	}
}