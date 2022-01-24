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
struct usb_hcd {int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/  regs; TYPE_1__* driver; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int HCD_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct usb_hcd* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_hcd*) ; 

void FUNC10(struct pci_dev *dev)
{
	struct usb_hcd		*hcd;

	hcd = FUNC4(dev);
	if (!hcd)
		return;

	/* Fake an interrupt request in order to give the driver a chance
	 * to test whether the controller hardware has been removed (e.g.,
	 * cardbus physical eject).
	 */
	FUNC1();
	FUNC7(0, hcd);
	FUNC2();

	FUNC9(hcd);
	if (hcd->driver->flags & HCD_MEMORY) {
		FUNC0(hcd->regs);
		FUNC5(hcd->rsrc_start, hcd->rsrc_len);
	} else {
		FUNC6(hcd->rsrc_start, hcd->rsrc_len);
	}
	FUNC8(hcd);
	FUNC3(dev);
}