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
struct usb_gadget {int dummy; } ;
struct pxa_udc {TYPE_1__* mach; } ;
struct TYPE_2__ {int /*<<< orphan*/  udc_command; int /*<<< orphan*/  gpio_pullup; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_udc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pxa_udc*) ; 
 scalar_t__ FUNC3 (struct pxa_udc*) ; 
 struct pxa_udc* FUNC4 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa_udc*) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *_gadget, int is_active)
{
	struct pxa_udc *udc = FUNC4(_gadget);

	if (!FUNC1(udc->mach->gpio_pullup) && !udc->mach->udc_command)
		return -EOPNOTSUPP;

	FUNC0(udc, is_active);

	if (FUNC3(udc))
		FUNC6(udc);
	if (FUNC2(udc))
		FUNC5(udc);
	return 0;
}