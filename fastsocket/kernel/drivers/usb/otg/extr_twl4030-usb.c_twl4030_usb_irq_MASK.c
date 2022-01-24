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
struct twl4030_usb {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int USB_LINK_NONE ; 
 int USB_LINK_UNKNOWN ; 
 int USB_LINK_VBUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct twl4030_usb*) ; 
 int /*<<< orphan*/  FUNC3 (struct twl4030_usb*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct twl4030_usb*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *_twl)
{
	struct twl4030_usb *twl = _twl;
	int status;

#ifdef CONFIG_LOCKDEP
	/* WORKAROUND for lockdep forcing IRQF_DISABLED on us, which
	 * we don't want and can't tolerate.  Although it might be
	 * friendlier not to borrow this thread context...
	 */
	local_irq_enable();
#endif

	status = FUNC4(twl);
	if (status != USB_LINK_UNKNOWN) {

		/* FIXME add a set_power() method so that B-devices can
		 * configure the charger appropriately.  It's not always
		 * correct to consume VBUS power, and how much current to
		 * consume is a function of the USB configuration chosen
		 * by the host.
		 *
		 * REVISIT usb_gadget_vbus_connect(...) as needed, ditto
		 * its disconnect() sibling, when changing to/from the
		 * USB_LINK_VBUS state.  musb_hdrc won't care until it
		 * starts to handle softconnect right.
		 */
		FUNC5(status == USB_LINK_VBUS);

		if (status == USB_LINK_NONE)
			FUNC3(twl, 0);
		else
			FUNC2(twl);
	}
	FUNC1(&twl->dev->kobj, NULL, "vbus");

	return IRQ_HANDLED;
}