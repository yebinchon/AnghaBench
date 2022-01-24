#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* controller; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct omap_usb_config {scalar_t__ rwc; scalar_t__ otg; } ;
struct ohci_hcd {TYPE_1__* regs; int /*<<< orphan*/  hc_control; } ;
struct TYPE_6__ {struct omap_usb_config* platform_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_CTRL_RWC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 struct ohci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  host_enabled ; 
 int FUNC2 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5 (struct usb_hcd *hcd)
{
	struct omap_usb_config *config;
	struct ohci_hcd	*ohci = FUNC1 (hcd);
	int		ret;

	if (!host_enabled)
		return 0;
	config = hcd->self.controller->platform_data;
	if (config->otg || config->rwc) {
		ohci->hc_control = OHCI_CTRL_RWC;
		FUNC4(OHCI_CTRL_RWC, &ohci->regs->control);
	}

	if ((ret = FUNC2 (ohci)) < 0) {
		FUNC0(hcd->self.controller, "can't start\n");
		FUNC3 (hcd);
		return ret;
	}
	return 0;
}