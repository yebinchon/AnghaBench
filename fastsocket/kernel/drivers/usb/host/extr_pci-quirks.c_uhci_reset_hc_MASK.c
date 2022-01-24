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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ UHCI_USBCMD ; 
 int UHCI_USBCMD_HCRESET ; 
 scalar_t__ UHCI_USBINTR ; 
 int /*<<< orphan*/  UHCI_USBLEGSUP ; 
 int /*<<< orphan*/  UHCI_USBLEGSUP_RWC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct pci_dev *pdev, unsigned long base)
{
	/* Turn off PIRQ enable and SMI enable.  (This also turns off the
	 * BIOS's USB Legacy Support.)  Turn off all the R/WC bits too.
	 */
	FUNC4(pdev, UHCI_USBLEGSUP, UHCI_USBLEGSUP_RWC);

	/* Reset the HC - this will force us to get a
	 * new notification of any already connected
	 * ports due to the virtual disconnect that it
	 * implies.
	 */
	FUNC3(UHCI_USBCMD_HCRESET, base + UHCI_USBCMD);
	FUNC2();
	FUNC5(5);
	if (FUNC1(base + UHCI_USBCMD) & UHCI_USBCMD_HCRESET)
		FUNC0(&pdev->dev, "HCRESET not completed yet!\n");

	/* Just to be safe, disable interrupt requests and
	 * make sure the controller is stopped.
	 */
	FUNC3(0, base + UHCI_USBINTR);
	FUNC3(0, base + UHCI_USBCMD);
}