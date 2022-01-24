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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct pxa_udc {scalar_t__ enabled; TYPE_1__ gadget; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCR_UDE ; 
 int /*<<< orphan*/  UDCICR0 ; 
 int /*<<< orphan*/  UDCICR1 ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pxa_udc *udc)
{
	if (!udc->enabled)
		return;

	FUNC3(udc, UDCICR0, 0);
	FUNC3(udc, UDCICR1, 0);

	FUNC2(udc, UDCCR_UDE);
	FUNC0(udc->clk);

	FUNC1(udc);
	udc->gadget.speed = USB_SPEED_UNKNOWN;

	udc->enabled = 0;
}