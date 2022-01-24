#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_gadget_driver {int /*<<< orphan*/  (* unbind ) (TYPE_1__*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_3__ {scalar_t__ speed; TYPE_2__ dev; } ;
struct m66592 {struct usb_gadget_driver* driver; TYPE_1__ gadget; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M66592_INTENB0 ; 
 int M66592_URST ; 
 int M66592_VBSE ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct m66592*) ; 
 int /*<<< orphan*/  FUNC2 (struct m66592*) ; 
 int /*<<< orphan*/  FUNC3 (struct m66592*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct m66592*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct m66592* the_controller ; 

int FUNC8(struct usb_gadget_driver *driver)
{
	struct m66592 *m66592 = the_controller;
	unsigned long flags;

	if (driver != m66592->driver || !driver->unbind)
		return -EINVAL;

	FUNC5(&m66592->lock, flags);
	if (m66592->gadget.speed != USB_SPEED_UNKNOWN)
		FUNC4(m66592);
	FUNC6(&m66592->lock, flags);

	FUNC3(m66592, M66592_VBSE | M66592_URST, M66592_INTENB0);

	driver->unbind(&m66592->gadget);
	m66592->gadget.dev.driver = NULL;

	FUNC2(m66592);
	FUNC1(m66592);

	FUNC0(&m66592->gadget.dev);
	m66592->driver = NULL;
	return 0;
}