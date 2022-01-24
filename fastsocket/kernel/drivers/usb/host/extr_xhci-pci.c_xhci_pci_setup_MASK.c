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
struct xhci_hcd {scalar_t__ sbrn; } ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XHCI_SBRN_OFFSET ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,char*,unsigned int) ; 
 int FUNC6 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xhci_pci_quirks ; 
 int FUNC7 (struct xhci_hcd*,struct pci_dev*) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd)
{
	struct xhci_hcd		*xhci;
	struct pci_dev		*pdev = FUNC3(hcd->self.controller);
	int			retval;

	retval = FUNC6(hcd, xhci_pci_quirks);
	if (retval)
		return retval;

	xhci = FUNC0(hcd);
	if (!FUNC4(hcd))
		return 0;

	FUNC2(pdev, XHCI_SBRN_OFFSET, &xhci->sbrn);
	FUNC5(xhci, "Got SBRN %u\n", (unsigned int) xhci->sbrn);

	/* Find any debug ports */
	retval = FUNC7(xhci, pdev);
	if (!retval)
		return retval;

	FUNC1(xhci);
	return retval;
}