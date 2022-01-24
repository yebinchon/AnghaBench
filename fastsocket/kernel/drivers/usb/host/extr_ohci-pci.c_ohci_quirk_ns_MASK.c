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
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {scalar_t__ device; scalar_t__ vendor; int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;
struct ohci_hcd {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_QUIRK_SUPERIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PCI_DEVICE_ID_NS_87560_LIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_VENDOR_ID_NS ; 
 struct ohci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ohci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_hcd *hcd)
{
	struct pci_dev *pdev = FUNC6(hcd->self.controller);
	struct pci_dev	*b;

	b  = FUNC5 (pdev->bus, FUNC0 (FUNC1 (pdev->devfn), 1));
	if (b && b->device == PCI_DEVICE_ID_NS_87560_LIO
	    && b->vendor == PCI_VENDOR_ID_NS) {
		struct ohci_hcd	*ohci = FUNC2 (hcd);

		ohci->flags |= OHCI_QUIRK_SUPERIO;
		FUNC3 (ohci, "Using NSC SuperIO setup\n");
	}
	FUNC4(b);

	return 0;
}