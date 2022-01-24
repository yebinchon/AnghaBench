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
struct usb_host_endpoint {int enabled; int /*<<< orphan*/  desc; } ;
struct usb_device {struct usb_host_endpoint** ep_in; struct usb_host_endpoint** ep_out; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,struct usb_host_endpoint*) ; 

void FUNC4(struct usb_device *dev, struct usb_host_endpoint *ep,
		bool reset_ep)
{
	int epnum = FUNC1(&ep->desc);
	int is_out = FUNC0(&ep->desc);
	int is_control = FUNC2(&ep->desc);

	if (reset_ep)
		FUNC3(dev, ep);
	if (is_out || is_control)
		dev->ep_out[epnum] = ep;
	if (!is_out || is_control)
		dev->ep_in[epnum] = ep;
	ep->enabled = 1;
}