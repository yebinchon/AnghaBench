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
typedef  int u8 ;
struct musb {int is_suspended; int /*<<< orphan*/  lock; int /*<<< orphan*/  g; TYPE_2__* gadget_driver; TYPE_1__* xceiv; int /*<<< orphan*/  mregs; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* suspend ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_VBUS ; 
#define  OTG_STATE_B_IDLE 129 
#define  OTG_STATE_B_PERIPHERAL 128 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct musb *musb)
{
	u8	devctl;

	devctl = FUNC2(musb->mregs, MUSB_DEVCTL);
	FUNC0(3, "devctl %02x\n", devctl);

	switch (musb->xceiv->state) {
	case OTG_STATE_B_IDLE:
		if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS)
			musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
		break;
	case OTG_STATE_B_PERIPHERAL:
		musb->is_suspended = 1;
		if (musb->gadget_driver && musb->gadget_driver->suspend) {
			FUNC5(&musb->lock);
			musb->gadget_driver->suspend(&musb->g);
			FUNC4(&musb->lock);
		}
		break;
	default:
		/* REVISIT if B_HOST, clear DEVCTL.HOSTREQ;
		 * A_PERIPHERAL may need care too
		 */
		FUNC1("unhandled SUSPEND transition (%s)\n",
				FUNC3(musb));
	}
}