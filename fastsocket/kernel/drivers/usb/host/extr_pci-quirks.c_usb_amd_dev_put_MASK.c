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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ probe_count; scalar_t__ probe_result; scalar_t__ isoc_reqs; scalar_t__ sb_type; scalar_t__ nb_type; struct pci_dev* smbus_dev; struct pci_dev* nb_dev; } ;

/* Variables and functions */
 TYPE_1__ amd_chipset ; 
 int /*<<< orphan*/  amd_lock ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(void)
{
	struct pci_dev *nb, *smbus;
	unsigned long flags;

	FUNC1(&amd_lock, flags);

	amd_chipset.probe_count--;
	if (amd_chipset.probe_count > 0) {
		FUNC2(&amd_lock, flags);
		return;
	}

	/* save them to pci_dev_put outside of spinlock */
	nb    = amd_chipset.nb_dev;
	smbus = amd_chipset.smbus_dev;

	amd_chipset.nb_dev = NULL;
	amd_chipset.smbus_dev = NULL;
	amd_chipset.nb_type = 0;
	amd_chipset.sb_type = 0;
	amd_chipset.isoc_reqs = 0;
	amd_chipset.probe_result = 0;

	FUNC2(&amd_lock, flags);

	if (nb)
		FUNC0(nb);
	if (smbus)
		FUNC0(smbus);
}