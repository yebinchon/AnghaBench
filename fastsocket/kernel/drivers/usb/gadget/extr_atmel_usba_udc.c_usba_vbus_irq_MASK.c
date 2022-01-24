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
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;
struct usba_udc {int vbus_prev; int /*<<< orphan*/  lock; TYPE_2__ gadget; TYPE_1__* driver; int /*<<< orphan*/  vbus_pin; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* disconnect ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  INT_ENB ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  USBA_DISABLE_MASK ; 
 int /*<<< orphan*/  USBA_ENABLE_MASK ; 
 int /*<<< orphan*/  USBA_END_OF_RESET ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct usba_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *devid)
{
	struct usba_udc *udc = devid;
	int vbus;

	/* debounce */
	FUNC6(10);

	FUNC2(&udc->lock);

	/* May happen if Vbus pin toggles during probe() */
	if (!udc->driver)
		goto out;

	vbus = FUNC0(udc->vbus_pin);
	if (vbus != udc->vbus_prev) {
		if (vbus) {
			FUNC5(1);
			FUNC7(udc, CTRL, USBA_ENABLE_MASK);
			FUNC7(udc, INT_ENB, USBA_END_OF_RESET);
		} else {
			udc->gadget.speed = USB_SPEED_UNKNOWN;
			FUNC1(udc);
			FUNC5(0);
			FUNC7(udc, CTRL, USBA_DISABLE_MASK);
			if (udc->driver->disconnect) {
				FUNC3(&udc->lock);
				udc->driver->disconnect(&udc->gadget);
				FUNC2(&udc->lock);
			}
		}
		udc->vbus_prev = vbus;
	}

out:
	FUNC3(&udc->lock);

	return IRQ_HANDLED;
}