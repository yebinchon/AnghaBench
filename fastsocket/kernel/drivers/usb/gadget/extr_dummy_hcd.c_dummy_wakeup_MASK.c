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
struct usb_gadget {int dummy; } ;
struct dummy {int devstatus; int port_status; scalar_t__ rh_state; int resuming; scalar_t__ re_timeout; } ;
struct TYPE_2__ {int /*<<< orphan*/  rh_timer; } ;

/* Variables and functions */
 scalar_t__ DUMMY_RH_SUSPENDED ; 
 int EINVAL ; 
 int EIO ; 
 int ENOLINK ; 
 int USB_DEVICE_B_HNP_ENABLE ; 
 int USB_DEVICE_REMOTE_WAKEUP ; 
 int USB_PORT_STAT_CONNECTION ; 
 int USB_PORT_STAT_SUSPEND ; 
 TYPE_1__* FUNC0 (struct dummy*) ; 
 struct dummy* FUNC1 (struct usb_gadget*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4 (struct usb_gadget *_gadget)
{
	struct dummy	*dum;

	dum = FUNC1 (_gadget);
	if (!(dum->devstatus &	( (1 << USB_DEVICE_B_HNP_ENABLE)
				| (1 << USB_DEVICE_REMOTE_WAKEUP))))
		return -EINVAL;
	if ((dum->port_status & USB_PORT_STAT_CONNECTION) == 0)
		return -ENOLINK;
	if ((dum->port_status & USB_PORT_STAT_SUSPEND) == 0 &&
			 dum->rh_state != DUMMY_RH_SUSPENDED)
		return -EIO;

	/* FIXME: What if the root hub is suspended but the port isn't? */

	/* hub notices our request, issues downstream resume, etc */
	dum->resuming = 1;
	dum->re_timeout = jiffies + FUNC3(20);
	FUNC2 (&FUNC0 (dum)->rh_timer, dum->re_timeout);
	return 0;
}