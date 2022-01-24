#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_7__ {TYPE_1__ dev; int /*<<< orphan*/  speed; } ;
struct usba_udc {int /*<<< orphan*/  pclk; int /*<<< orphan*/  hclk; struct usb_gadget_driver* driver; TYPE_3__ gadget; int /*<<< orphan*/  lock; int /*<<< orphan*/  vbus_pin; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {TYPE_2__ driver; int /*<<< orphan*/  (* unbind ) (TYPE_3__*) ;int /*<<< orphan*/  (* disconnect ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_GADGET ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  USBA_DISABLE_MASK ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 struct usba_udc the_udc ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usba_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct usb_gadget_driver *driver)
{
	struct usba_udc *udc = &the_udc;
	unsigned long flags;

	if (!udc->pdev)
		return -ENODEV;
	if (driver != udc->driver || !driver->unbind)
		return -EINVAL;

	if (FUNC3(udc->vbus_pin))
		FUNC2(FUNC4(udc->vbus_pin));

	FUNC6(&udc->lock, flags);
	udc->gadget.speed = USB_SPEED_UNKNOWN;
	FUNC5(udc);
	FUNC7(&udc->lock, flags);

	/* This will also disable the DP pullup */
	FUNC10(0);
	FUNC11(udc, CTRL, USBA_DISABLE_MASK);

	if (udc->driver->disconnect)
		udc->driver->disconnect(&udc->gadget);

	driver->unbind(&udc->gadget);
	udc->gadget.dev.driver = NULL;
	udc->driver = NULL;

	FUNC1(udc->hclk);
	FUNC1(udc->pclk);

	FUNC0(DBG_GADGET, "unregistered driver `%s'\n", driver->driver.name);

	return 0;
}