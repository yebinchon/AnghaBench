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
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {TYPE_2__ driver; int /*<<< orphan*/  (* unbind ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  speed; } ;
struct s3c_hsotg {int /*<<< orphan*/  dev; TYPE_3__ gadget; struct usb_gadget_driver* driver; TYPE_1__* eps; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int S3C_HSOTG_EPS ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct s3c_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disconnect ; 
 struct s3c_hsotg* our_hsotg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

int FUNC5(struct usb_gadget_driver *driver)
{
	struct s3c_hsotg *hsotg = our_hsotg;
	int ep;

	if (!hsotg)
		return -ENODEV;

	if (!driver || driver != hsotg->driver || !driver->unbind)
		return -EINVAL;

	/* all endpoints should be shutdown */
	for (ep = 0; ep < S3C_HSOTG_EPS; ep++)
		FUNC3(&hsotg->eps[ep].ep);

	FUNC0(hsotg, disconnect);

	driver->unbind(&hsotg->gadget);
	hsotg->driver = NULL;
	hsotg->gadget.speed = USB_SPEED_UNKNOWN;

	FUNC2(&hsotg->gadget.dev);

	FUNC1(hsotg->dev, "unregistered gadget driver '%s'\n",
		 driver->driver.name);

	return 0;
}