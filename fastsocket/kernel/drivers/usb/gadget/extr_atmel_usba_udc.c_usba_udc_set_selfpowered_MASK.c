#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usba_udc {int devstatus; int /*<<< orphan*/  lock; } ;
struct usb_gadget {int dummy; } ;

/* Variables and functions */
 int USB_DEVICE_SELF_POWERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct usba_udc* FUNC2 (struct usb_gadget*) ; 

__attribute__((used)) static int
FUNC3(struct usb_gadget *gadget, int is_selfpowered)
{
	struct usba_udc *udc = FUNC2(gadget);
	unsigned long flags;

	FUNC0(&udc->lock, flags);
	if (is_selfpowered)
		udc->devstatus |= 1 << USB_DEVICE_SELF_POWERED;
	else
		udc->devstatus &= ~(1 << USB_DEVICE_SELF_POWERED);
	FUNC1(&udc->lock, flags);

	return 0;
}