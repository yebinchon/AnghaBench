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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct i1480_usb {int /*<<< orphan*/ * neep_urb; int /*<<< orphan*/  usb_iface; int /*<<< orphan*/  usb_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,struct i1480_usb*) ; 

__attribute__((used)) static
int FUNC7(struct i1480_usb *i1480_usb, struct usb_interface *iface)
{
	struct usb_device *usb_dev = FUNC0(iface);
	int result = -ENOMEM;

	i1480_usb->usb_dev = FUNC2(usb_dev);	/* bind the USB device */
	i1480_usb->usb_iface = FUNC3(iface);
	FUNC6(iface, i1480_usb);		/* Bind the driver to iface0 */
	i1480_usb->neep_urb = FUNC1(0, GFP_KERNEL);
	if (i1480_usb->neep_urb == NULL)
		goto error;
	return 0;

error:
	FUNC6(iface, NULL);
	FUNC5(iface);
	FUNC4(usb_dev);
	return result;
}