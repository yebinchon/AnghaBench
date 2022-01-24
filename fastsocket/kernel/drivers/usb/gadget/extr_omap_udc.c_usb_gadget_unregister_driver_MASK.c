#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {TYPE_2__ driver; int /*<<< orphan*/  (* unbind ) (TYPE_5__*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_11__ {TYPE_1__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/ * dc_clk; struct usb_gadget_driver* driver; TYPE_5__ gadget; int /*<<< orphan*/  lock; scalar_t__ transceiver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 TYPE_3__* udc ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

int FUNC10 (struct usb_gadget_driver *driver)
{
	unsigned long	flags;
	int		status = -ENODEV;

	if (!udc)
		return -ENODEV;
	if (!driver || driver != udc->driver || !driver->unbind)
		return -EINVAL;

	if (udc->dc_clk != NULL)
		FUNC2(1);

	if (FUNC1())
		FUNC3(&udc->gadget, 0);

	if (udc->transceiver)
		(void) FUNC4(udc->transceiver, NULL);
	else
		FUNC5(udc);

	FUNC6(&udc->lock, flags);
	FUNC9(udc);
	FUNC7(&udc->lock, flags);

	driver->unbind(&udc->gadget);
	udc->gadget.dev.driver = NULL;
	udc->driver = NULL;

	if (udc->dc_clk != NULL)
		FUNC2(0);
	FUNC0("unregistered driver '%s'\n", driver->driver.name);
	return status;
}