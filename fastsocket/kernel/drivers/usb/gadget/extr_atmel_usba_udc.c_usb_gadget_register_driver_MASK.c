#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct usba_udc {int devstatus; scalar_t__ vbus_prev; TYPE_3__ gadget; struct usb_gadget_driver* driver; int /*<<< orphan*/  lock; int /*<<< orphan*/  vbus_pin; int /*<<< orphan*/  hclk; int /*<<< orphan*/  pclk; int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {int (* bind ) (TYPE_3__*) ;TYPE_1__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  DBG_ERR ; 
 int /*<<< orphan*/  DBG_GADGET ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  INT_ENB ; 
 int /*<<< orphan*/  USBA_ENABLE_MASK ; 
 int /*<<< orphan*/  USBA_END_OF_RESET ; 
 int USB_DEVICE_SELF_POWERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (TYPE_3__*) ; 
 struct usba_udc the_udc ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct usba_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct usba_udc*) ; 

int FUNC11(struct usb_gadget_driver *driver)
{
	struct usba_udc *udc = &the_udc;
	unsigned long flags;
	int ret;

	if (!udc->pdev)
		return -ENODEV;

	FUNC5(&udc->lock, flags);
	if (udc->driver) {
		FUNC6(&udc->lock, flags);
		return -EBUSY;
	}

	udc->devstatus = 1 << USB_DEVICE_SELF_POWERED;
	udc->driver = driver;
	udc->gadget.dev.driver = &driver->driver;
	FUNC6(&udc->lock, flags);

	FUNC1(udc->pclk);
	FUNC1(udc->hclk);

	ret = driver->bind(&udc->gadget);
	if (ret) {
		FUNC0(DBG_ERR, "Could not bind to driver %s: error %d\n",
			driver->driver.name, ret);
		goto err_driver_bind;
	}

	FUNC0(DBG_GADGET, "registered driver `%s'\n", driver->driver.name);

	udc->vbus_prev = 0;
	if (FUNC3(udc->vbus_pin))
		FUNC2(FUNC4(udc->vbus_pin));

	/* If Vbus is present, enable the controller and wait for reset */
	FUNC5(&udc->lock, flags);
	if (FUNC10(udc) && udc->vbus_prev == 0) {
		FUNC8(1);
		FUNC9(udc, CTRL, USBA_ENABLE_MASK);
		FUNC9(udc, INT_ENB, USBA_END_OF_RESET);
	}
	FUNC6(&udc->lock, flags);

	return 0;

err_driver_bind:
	udc->driver = NULL;
	udc->gadget.dev.driver = NULL;
	return ret;
}