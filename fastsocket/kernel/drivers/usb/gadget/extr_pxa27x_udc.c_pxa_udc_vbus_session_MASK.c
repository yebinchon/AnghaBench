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
struct pxa_udc {int vbus_sensed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pxa_udc*) ; 
 scalar_t__ FUNC1 (struct pxa_udc*) ; 
 struct pxa_udc* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_udc*) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *_gadget, int is_active)
{
	struct pxa_udc *udc = FUNC2(_gadget);

	udc->vbus_sensed = is_active;
	if (FUNC1(udc))
		FUNC4(udc);
	if (FUNC0(udc))
		FUNC3(udc);

	return 0;
}