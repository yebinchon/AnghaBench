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
struct TYPE_2__ {int default_a; int /*<<< orphan*/  state; } ;
struct twl4030_usb {int linkstat; int /*<<< orphan*/  lock; TYPE_1__ otg; int /*<<< orphan*/  dev; } ;
typedef  enum linkstat { ____Placeholder_linkstat } linkstat ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTG_STATE_A_IDLE ; 
 int /*<<< orphan*/  OTG_STATE_B_IDLE ; 
 int /*<<< orphan*/  STS_HW_CONDITIONS ; 
 int /*<<< orphan*/  TWL4030_MODULE_PM_MASTER ; 
 int USB_LINK_ID ; 
 int USB_LINK_NONE ; 
 int USB_LINK_UNKNOWN ; 
 int USB_LINK_VBUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct twl4030_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum linkstat FUNC6(struct twl4030_usb *twl)
{
	int	status;
	int	linkstat = USB_LINK_UNKNOWN;

	/*
	 * For ID/VBUS sensing, see manual section 15.4.8 ...
	 * except when using only battery backup power, two
	 * comparators produce VBUS_PRES and ID_PRES signals,
	 * which don't match docs elsewhere.  But ... BIT(7)
	 * and BIT(2) of STS_HW_CONDITIONS, respectively, do
	 * seem to match up.  If either is true the USB_PRES
	 * signal is active, the OTG module is activated, and
	 * its interrupt may be raised (may wake the system).
	 */
	status = FUNC5(twl, TWL4030_MODULE_PM_MASTER,
			STS_HW_CONDITIONS);
	if (status < 0)
		FUNC2(twl->dev, "USB link status err %d\n", status);
	else if (status & (FUNC0(7) | FUNC0(2))) {
		if (status & FUNC0(2))
			linkstat = USB_LINK_ID;
		else
			linkstat = USB_LINK_VBUS;
	} else
		linkstat = USB_LINK_NONE;

	FUNC1(twl->dev, "HW_CONDITIONS 0x%02x/%d; link %d\n",
			status, status, linkstat);

	/* REVISIT this assumes host and peripheral controllers
	 * are registered, and that both are active...
	 */

	FUNC3(&twl->lock);
	twl->linkstat = linkstat;
	if (linkstat == USB_LINK_ID) {
		twl->otg.default_a = true;
		twl->otg.state = OTG_STATE_A_IDLE;
	} else {
		twl->otg.default_a = false;
		twl->otg.state = OTG_STATE_B_IDLE;
	}
	FUNC4(&twl->lock);

	return linkstat;
}