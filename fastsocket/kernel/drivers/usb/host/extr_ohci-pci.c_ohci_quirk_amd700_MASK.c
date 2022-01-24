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
typedef  int u8 ;
struct usb_hcd {int dummy; } ;
struct pci_dev {int dummy; } ;
struct ohci_hcd {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_QUIRK_AMD_PLL ; 
 int /*<<< orphan*/  OHCI_QUIRK_AMD_PREFETCH ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_ATI_SBX00_SMBUS ; 
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_ATI ; 
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd)
{
	struct ohci_hcd *ohci = FUNC0(hcd);
	struct pci_dev *amd_smbus_dev;
	u8 rev = 0;

	if (FUNC5())
		ohci->flags |= OHCI_QUIRK_AMD_PLL;

	amd_smbus_dev = FUNC3(PCI_VENDOR_ID_ATI,
			PCI_DEVICE_ID_ATI_SBX00_SMBUS, NULL);
	if (!amd_smbus_dev)
		return 0;

	FUNC4(amd_smbus_dev, PCI_REVISION_ID, &rev);

	/* SB800 needs pre-fetch fix */
	if ((rev >= 0x40) && (rev <= 0x4f)) {
		ohci->flags |= OHCI_QUIRK_AMD_PREFETCH;
		FUNC1(ohci, "enabled AMD prefetch quirk\n");
	}

	FUNC2(amd_smbus_dev);
	amd_smbus_dev = NULL;

	return 0;
}