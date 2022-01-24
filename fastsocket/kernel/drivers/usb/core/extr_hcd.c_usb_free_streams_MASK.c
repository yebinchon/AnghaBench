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
struct usb_interface {int dummy; } ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {scalar_t__ speed; int /*<<< orphan*/  bus; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_streams ) (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint**,unsigned int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ USB_SPEED_SUPER ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*,struct usb_device*,struct usb_host_endpoint**,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct usb_interface *interface,
		struct usb_host_endpoint **eps, unsigned int num_eps,
		gfp_t mem_flags)
{
	struct usb_hcd *hcd;
	struct usb_device *dev;
	int i;

	dev = FUNC1(interface);
	hcd = FUNC0(dev->bus);
	if (dev->speed != USB_SPEED_SUPER)
		return;

	/* Streams only apply to bulk endpoints. */
	for (i = 0; i < num_eps; i++)
		if (!FUNC3(&eps[i]->desc))
			return;

	hcd->driver->free_streams(hcd, dev, eps, num_eps, mem_flags);
}