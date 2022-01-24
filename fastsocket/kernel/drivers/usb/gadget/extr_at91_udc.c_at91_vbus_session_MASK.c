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
struct usb_gadget {int dummy; } ;
struct at91_udc {int vbus; scalar_t__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_udc*,int) ; 
 struct at91_udc* FUNC3 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *gadget, int is_active)
{
	struct at91_udc	*udc = FUNC3(gadget);
	unsigned long	flags;

	// VDBG("vbus %s\n", is_active ? "on" : "off");
	FUNC1(flags);
	udc->vbus = (is_active != 0);
	if (udc->driver)
		FUNC2(udc, is_active);
	else
		FUNC2(udc, 0);
	FUNC0(flags);
	return 0;
}