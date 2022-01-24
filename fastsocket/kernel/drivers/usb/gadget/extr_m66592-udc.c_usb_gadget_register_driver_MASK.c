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
struct TYPE_5__ {int /*<<< orphan*/ * bus; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_2__*) ;TYPE_1__ driver; int /*<<< orphan*/  setup; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {TYPE_3__ dev; } ;
struct m66592 {int old_vbus; TYPE_2__ gadget; struct usb_gadget_driver* driver; int /*<<< orphan*/  timer; int /*<<< orphan*/  scount; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  M66592_INTENB0 ; 
 int /*<<< orphan*/  M66592_INTSTS0 ; 
 int /*<<< orphan*/  M66592_MAX_SAMPLING ; 
 int M66592_URST ; 
 int M66592_VBSE ; 
 int M66592_VBSTS ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct m66592*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct m66592*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct m66592*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 struct m66592* the_controller ; 

int FUNC9(struct usb_gadget_driver *driver)
{
	struct m66592 *m66592 = the_controller;
	int retval;

	if (!driver
			|| driver->speed != USB_SPEED_HIGH
			|| !driver->bind
			|| !driver->setup)
		return -EINVAL;
	if (!m66592)
		return -ENODEV;
	if (m66592->driver)
		return -EBUSY;

	/* hook up the driver */
	driver->driver.bus = NULL;
	m66592->driver = driver;
	m66592->gadget.dev.driver = &driver->driver;

	retval = FUNC0(&m66592->gadget.dev);
	if (retval) {
		FUNC7("device_add error (%d)\n", retval);
		goto error;
	}

	retval = driver->bind (&m66592->gadget);
	if (retval) {
		FUNC7("bind to driver error (%d)\n", retval);
		FUNC1(&m66592->gadget.dev);
		goto error;
	}

	FUNC2(m66592, M66592_VBSE | M66592_URST, M66592_INTENB0);
	if (FUNC3(m66592, M66592_INTSTS0) & M66592_VBSTS) {
		FUNC4(m66592);
		/* start vbus sampling */
		m66592->old_vbus = FUNC3(m66592,
					 M66592_INTSTS0) & M66592_VBSTS;
		m66592->scount = M66592_MAX_SAMPLING;
		FUNC5(&m66592->timer, jiffies + FUNC6(50));
	}

	return 0;

error:
	m66592->driver = NULL;
	m66592->gadget.dev.driver = NULL;

	return retval;
}