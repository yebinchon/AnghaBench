#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * bus; } ;
struct usb_gadget_driver {int (* bind ) (TYPE_6__*) ;scalar_t__ speed; TYPE_3__ driver; int /*<<< orphan*/  setup; } ;
struct TYPE_10__ {TYPE_3__* driver; } ;
struct TYPE_12__ {TYPE_4__ dev; } ;
struct udc {TYPE_5__* regs; TYPE_6__ gadget; struct usb_gadget_driver* driver; TYPE_2__* ep; } ;
struct TYPE_11__ {int /*<<< orphan*/  ctl; } ;
struct TYPE_7__ {int /*<<< orphan*/  driver_data; } ;
struct TYPE_8__ {TYPE_1__ ep; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct udc*,char*,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  UDC_DEVCTL_SD ; 
 size_t UDC_EP0IN_IX ; 
 size_t UDC_EP0OUT_IX ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct udc*) ; 
 int FUNC4 (TYPE_6__*) ; 
 struct udc* udc ; 
 int /*<<< orphan*/  FUNC5 (struct udc*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

int FUNC7(struct usb_gadget_driver *driver)
{
	struct udc		*dev = udc;
	int			retval;
	u32 tmp;

	if (!driver || !driver->bind || !driver->setup
			|| driver->speed != USB_SPEED_HIGH)
		return -EINVAL;
	if (!dev)
		return -ENODEV;
	if (dev->driver)
		return -EBUSY;

	driver->driver.bus = NULL;
	dev->driver = driver;
	dev->gadget.dev.driver = &driver->driver;

	retval = driver->bind(&dev->gadget);

	/* Some gadget drivers use both ep0 directions.
	 * NOTE: to gadget driver, ep0 is just one endpoint...
	 */
	dev->ep[UDC_EP0OUT_IX].ep.driver_data =
		dev->ep[UDC_EP0IN_IX].ep.driver_data;

	if (retval) {
		FUNC1(dev, "binding to %s returning %d\n",
				driver->driver.name, retval);
		dev->driver = NULL;
		dev->gadget.dev.driver = NULL;
		return retval;
	}

	/* get ready for ep0 traffic */
	FUNC3(dev);

	/* clear SD */
	tmp = FUNC2(&dev->regs->ctl);
	tmp = tmp & FUNC0(UDC_DEVCTL_SD);
	FUNC6(tmp, &dev->regs->ctl);

	FUNC5(dev);

	return 0;
}