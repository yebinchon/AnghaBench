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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  irqs_reset; } ;
struct TYPE_3__ {int /*<<< orphan*/  speed; } ;
struct pxa_udc {TYPE_2__ stats; TYPE_1__ gadget; int /*<<< orphan*/  driver; int /*<<< orphan*/  dev; struct pxa_ep* pxa_ep; } ;
struct pxa_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  UDCCR ; 
 int UDCCR_UDA ; 
 int UDCCSR0_FTF ; 
 int UDCCSR0_OPC ; 
 int /*<<< orphan*/  UDCISR1 ; 
 int /*<<< orphan*/  UDCISR1_IRRS ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_ep*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pxa_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pxa_udc *udc)
{
	u32 udccr = FUNC7(udc, UDCCR);
	struct pxa_ep *ep = &udc->pxa_ep[0];

	FUNC1(udc->dev, "USB reset\n");
	FUNC8(udc, UDCISR1, UDCISR1_IRRS);
	udc->stats.irqs_reset++;

	if ((udccr & UDCCR_UDA) == 0) {
		FUNC0(udc->dev, "USB reset start\n");
		FUNC6(udc, udc->driver);
	}
	udc->gadget.speed = USB_SPEED_FULL;
	FUNC4(&udc->stats, 0, sizeof udc->stats);

	FUNC5(ep, -EPROTO);
	FUNC3(ep, UDCCSR0_FTF | UDCCSR0_OPC);
	FUNC2(udc);
}