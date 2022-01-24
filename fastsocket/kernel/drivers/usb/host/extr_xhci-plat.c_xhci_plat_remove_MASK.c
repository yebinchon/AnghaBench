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
struct xhci_hcd {struct usb_hcd* shared_hcd; } ;
struct usb_hcd {int /*<<< orphan*/  regs; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct usb_hcd	*hcd = FUNC3(dev);
	struct xhci_hcd	*xhci = FUNC0(hcd);

	FUNC5(xhci->shared_hcd);
	FUNC4(xhci->shared_hcd);

	FUNC5(hcd);
	FUNC1(hcd->regs);
	FUNC4(hcd);
	FUNC2(xhci);

	return 0;
}