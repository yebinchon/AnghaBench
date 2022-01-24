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
typedef  scalar_t__ u8 ;
struct wusbhc {scalar_t__ ports_max; } ;
struct wusb_dev {int dummy; } ;
struct usb_device {int /*<<< orphan*/  portnum; } ;
struct TYPE_2__ {struct wusb_dev* wusb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wusb_dev*) ; 
 TYPE_1__* FUNC2 (struct wusbhc*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

struct wusb_dev *FUNC4(struct wusbhc *wusbhc,
					   struct usb_device *usb_dev)
{
	struct wusb_dev *wusb_dev;
	u8 port_idx;

	port_idx = FUNC3(usb_dev->portnum);
	FUNC0(port_idx > wusbhc->ports_max);
	wusb_dev = FUNC2(wusbhc, port_idx)->wusb_dev;
	if (wusb_dev != NULL)		/* ops, device is gone */
		FUNC1(wusb_dev);
	return wusb_dev;
}