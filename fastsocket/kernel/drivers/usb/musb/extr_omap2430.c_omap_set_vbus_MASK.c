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
typedef  int /*<<< orphan*/  u8 ;
struct musb {int is_active; int /*<<< orphan*/  mregs; TYPE_1__* xceiv; } ;
struct TYPE_2__ {int default_a; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int /*<<< orphan*/  MUSB_DEVCTL_SESSION ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  OTG_STATE_A_WAIT_VRISE ; 
 int /*<<< orphan*/  OTG_STATE_B_IDLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct musb*) ; 

__attribute__((used)) static void FUNC6(struct musb *musb, int is_on)
{
	u8		devctl;
	/* HDRC controls CPEN, but beware current surges during device
	 * connect.  They can trigger transient overcurrent conditions
	 * that must be ignored.
	 */

	devctl = FUNC3(musb->mregs, MUSB_DEVCTL);

	if (is_on) {
		musb->is_active = 1;
		musb->xceiv->default_a = 1;
		musb->xceiv->state = OTG_STATE_A_WAIT_VRISE;
		devctl |= MUSB_DEVCTL_SESSION;

		FUNC2(musb);
	} else {
		musb->is_active = 0;

		/* NOTE:  we're skipping A_WAIT_VFALL -> A_IDLE and
		 * jumping right to B_IDLE...
		 */

		musb->xceiv->default_a = 0;
		musb->xceiv->state = OTG_STATE_B_IDLE;
		devctl &= ~MUSB_DEVCTL_SESSION;

		FUNC1(musb);
	}
	FUNC4(musb->mregs, MUSB_DEVCTL, devctl);

	FUNC0(1, "VBUS %s, devctl %02x "
		/* otg %3x conf %08x prcm %08x */ "\n",
		FUNC5(musb),
		FUNC3(musb->mregs, MUSB_DEVCTL));
}