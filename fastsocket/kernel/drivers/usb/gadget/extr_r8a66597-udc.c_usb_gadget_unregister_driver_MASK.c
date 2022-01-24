#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_gadget_driver {int /*<<< orphan*/  (* unbind ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; int /*<<< orphan*/  dev; } ;
struct r8a66597 {struct usb_gadget_driver* driver; TYPE_1__ gadget; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INTENB0 ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  VBSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct r8a66597* the_controller ; 

int FUNC8(struct usb_gadget_driver *driver)
{
	struct r8a66597 *r8a66597 = the_controller;
	unsigned long flags;

	if (driver != r8a66597->driver || !driver->unbind)
		return -EINVAL;

	FUNC5(&r8a66597->lock, flags);
	if (r8a66597->gadget.speed != USB_SPEED_UNKNOWN)
		FUNC4(r8a66597);
	FUNC6(&r8a66597->lock, flags);

	FUNC3(r8a66597, VBSE, INTENB0);

	driver->unbind(&r8a66597->gadget);

	FUNC2(r8a66597);
	FUNC1(r8a66597);

	FUNC0(&r8a66597->gadget.dev);
	r8a66597->driver = NULL;
	return 0;
}