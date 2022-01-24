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
struct udc {TYPE_2__* ep; } ;
struct TYPE_4__ {int /*<<< orphan*/  num; scalar_t__ naking; TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct udc*,char*,...) ; 
 int UDC_EP0OUT_IX ; 
 int /*<<< orphan*/  UDC_EPCTL_CNAK ; 
 int UDC_EPIN_NUM_USED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int cnak_pending ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct udc *dev)
{
	u32 tmp;
	u32 reg;

	/* check epin's */
	FUNC1(dev, "CNAK pending queue processing\n");
	for (tmp = 0; tmp < UDC_EPIN_NUM_USED; tmp++) {
		if (cnak_pending & (1 << tmp)) {
			FUNC1(dev, "CNAK pending for ep%d\n", tmp);
			/* clear NAK by writing CNAK */
			reg = FUNC3(&dev->ep[tmp].regs->ctl);
			reg |= FUNC0(UDC_EPCTL_CNAK);
			FUNC4(reg, &dev->ep[tmp].regs->ctl);
			dev->ep[tmp].naking = 0;
			FUNC2(&dev->ep[tmp], dev->ep[tmp].num);
		}
	}
	/* ...	and ep0out */
	if (cnak_pending & (1 << UDC_EP0OUT_IX)) {
		FUNC1(dev, "CNAK pending for ep%d\n", UDC_EP0OUT_IX);
		/* clear NAK by writing CNAK */
		reg = FUNC3(&dev->ep[UDC_EP0OUT_IX].regs->ctl);
		reg |= FUNC0(UDC_EPCTL_CNAK);
		FUNC4(reg, &dev->ep[UDC_EP0OUT_IX].regs->ctl);
		dev->ep[UDC_EP0OUT_IX].naking = 0;
		FUNC2(&dev->ep[UDC_EP0OUT_IX],
				dev->ep[UDC_EP0OUT_IX].num);
	}
}