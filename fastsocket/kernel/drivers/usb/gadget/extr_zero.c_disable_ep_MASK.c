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
struct usb_ep {int /*<<< orphan*/ * driver_data; int /*<<< orphan*/  name; } ;
struct usb_composite_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct usb_ep*) ; 

__attribute__((used)) static void FUNC2(struct usb_composite_dev *cdev, struct usb_ep *ep)
{
	int			value;

	if (ep->driver_data) {
		value = FUNC1(ep);
		if (value < 0)
			FUNC0(cdev, "disable %s --> %d\n",
					ep->name, value);
		ep->driver_data = NULL;
	}
}