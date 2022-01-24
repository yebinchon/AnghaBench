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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {TYPE_1__ driver; int /*<<< orphan*/  (* unbind ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;
struct at91_udc {struct usb_gadget_driver* driver; TYPE_2__ gadget; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_UDP_IDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct at91_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct at91_udc controller ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct at91_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int FUNC7 (struct usb_gadget_driver *driver)
{
	struct at91_udc *udc = &controller;

	if (!driver || driver != udc->driver || !driver->unbind)
		return -EINVAL;

	FUNC3();
	udc->enabled = 0;
	FUNC1(udc, AT91_UDP_IDR, ~0);
	FUNC5(udc, 0);
	FUNC4();

	driver->unbind(&udc->gadget);
	udc->gadget.dev.driver = NULL;
	FUNC2(&udc->gadget.dev, NULL);
	udc->driver = NULL;

	FUNC0("unbound from %s\n", driver->driver.name);
	return 0;
}