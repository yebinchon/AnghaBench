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
struct usb_gadget_driver {int /*<<< orphan*/  (* unbind ) (TYPE_3__*) ;TYPE_1__ driver; } ;
struct TYPE_5__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct dummy {int /*<<< orphan*/  lock; scalar_t__ pullup; struct usb_gadget_driver* driver; TYPE_3__ gadget; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 struct dummy* the_controller ; 
 int /*<<< orphan*/  FUNC6 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8 (struct usb_gadget_driver *driver)
{
	struct dummy	*dum = the_controller;
	unsigned long	flags;

	if (!dum)
		return -ENODEV;
	if (!driver || driver != dum->driver || !driver->unbind)
		return -EINVAL;

	FUNC0 (FUNC6(dum), "unregister gadget driver '%s'\n",
			driver->driver.name);

	FUNC3 (&dum->lock, flags);
	dum->pullup = 0;
	FUNC2 (dum);
	FUNC4 (&dum->lock, flags);

	driver->unbind (&dum->gadget);
	dum->gadget.dev.driver = NULL;
	dum->driver = NULL;

	FUNC3 (&dum->lock, flags);
	dum->pullup = 0;
	FUNC2 (dum);
	FUNC4 (&dum->lock, flags);

	FUNC7 (FUNC1 (dum));
	return 0;
}