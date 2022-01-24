#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * bus; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_5__*) ;TYPE_3__ driver; int /*<<< orphan*/  setup; int /*<<< orphan*/  disconnect; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_6__ {TYPE_3__* driver; } ;
struct TYPE_10__ {int speed; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_9__ {TYPE_5__ gadget; int /*<<< orphan*/  dev; int /*<<< orphan*/  ep0_dir; int /*<<< orphan*/  ep0_state; int /*<<< orphan*/  usb_state; TYPE_2__* usb_regs; struct usb_gadget_driver* driver; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  usb_usbmr; int /*<<< orphan*/  usb_usber; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int USB_E_DEFAULT_DEVICE ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_STATE_ATTACHED ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (TYPE_5__*) ; 
 TYPE_4__* udc_controller ; 

int FUNC7(struct usb_gadget_driver *driver)
{
	int retval;
	unsigned long flags = 0;

	/* standard operations */
	if (!udc_controller)
		return -ENODEV;

	if (!driver || (driver->speed != USB_SPEED_FULL
			&& driver->speed != USB_SPEED_HIGH)
			|| !driver->bind || !driver->disconnect
			|| !driver->setup)
		return -EINVAL;

	if (udc_controller->driver)
		return -EBUSY;

	/* lock is needed but whether should use this lock or another */
	FUNC4(&udc_controller->lock, flags);

	driver->driver.bus = NULL;
	/* hook up the driver */
	udc_controller->driver = driver;
	udc_controller->gadget.dev.driver = &driver->driver;
	udc_controller->gadget.speed = (enum usb_device_speed)(driver->speed);
	FUNC5(&udc_controller->lock, flags);

	retval = driver->bind(&udc_controller->gadget);
	if (retval) {
		FUNC0(udc_controller->dev, "bind to %s --> %d",
				driver->driver.name, retval);
		udc_controller->gadget.dev.driver = NULL;
		udc_controller->driver = NULL;
		return retval;
	}

	/* Enable IRQ reg and Set usbcmd reg EN bit */
	FUNC3();

	FUNC2(&udc_controller->usb_regs->usb_usber, 0xffff);
	FUNC2(&udc_controller->usb_regs->usb_usbmr, USB_E_DEFAULT_DEVICE);
	udc_controller->usb_state = USB_STATE_ATTACHED;
	udc_controller->ep0_state = WAIT_FOR_SETUP;
	udc_controller->ep0_dir = USB_DIR_OUT;
	FUNC1(udc_controller->dev, "%s bind to driver %s \n",
		udc_controller->gadget.name, driver->driver.name);
	return 0;
}