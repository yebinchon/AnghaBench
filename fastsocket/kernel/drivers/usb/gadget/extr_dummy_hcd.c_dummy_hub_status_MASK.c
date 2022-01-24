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
struct usb_hcd {int dummy; } ;
struct dummy {int port_status; scalar_t__ rh_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  re_timeout; scalar_t__ resuming; } ;

/* Variables and functions */
 scalar_t__ DUMMY_RH_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 int PORT_C_MASK ; 
 int USB_PORT_STAT_C_SUSPEND ; 
 int USB_PORT_STAT_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy*) ; 
 struct dummy* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC9 (struct usb_hcd *hcd, char *buf)
{
	struct dummy		*dum;
	unsigned long		flags;
	int			retval = 0;

	dum = FUNC3 (hcd);

	FUNC5 (&dum->lock, flags);
	if (!FUNC0(hcd))
		goto done;

	if (dum->resuming && FUNC7 (jiffies, dum->re_timeout)) {
		dum->port_status |= (USB_PORT_STAT_C_SUSPEND << 16);
		dum->port_status &= ~USB_PORT_STAT_SUSPEND;
		FUNC4 (dum);
	}

	if ((dum->port_status & PORT_C_MASK) != 0) {
		*buf = (1 << 1);
		FUNC1 (FUNC2(dum), "port status 0x%08x has changes\n",
				dum->port_status);
		retval = 1;
		if (dum->rh_state == DUMMY_RH_SUSPENDED)
			FUNC8 (hcd);
	}
done:
	FUNC6 (&dum->lock, flags);
	return retval;
}