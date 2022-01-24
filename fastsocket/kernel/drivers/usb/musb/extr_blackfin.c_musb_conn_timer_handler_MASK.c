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
typedef  int u16 ;
struct musb {int /*<<< orphan*/  lock; int /*<<< orphan*/  mregs; TYPE_2__* config; TYPE_1__* xceiv; } ;
struct TYPE_4__ {int /*<<< orphan*/  gpio_vrsel; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_BDEVICE ; 
 int MUSB_DEVCTL_SESSION ; 
 int /*<<< orphan*/  MUSB_INTRUSB ; 
 int /*<<< orphan*/  MUSB_INTRUSBE ; 
 int MUSB_INTR_SUSPEND ; 
 int MUSB_INTR_VBUSERROR ; 
 int /*<<< orphan*/  MUSB_POWER ; 
 int MUSB_POWER_HSENAB ; 
#define  OTG_STATE_A_IDLE 129 
#define  OTG_STATE_A_WAIT_BCON 128 
 scalar_t__ TIMER_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  musb_conn_timer ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct musb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(unsigned long _musb)
{
	struct musb *musb = (void *)_musb;
	unsigned long flags;
	u16 val;

	FUNC8(&musb->lock, flags);
	switch (musb->xceiv->state) {
	case OTG_STATE_A_IDLE:
	case OTG_STATE_A_WAIT_BCON:
		/* Start a new session */
		val = FUNC4(musb->mregs, MUSB_DEVCTL);
		val |= MUSB_DEVCTL_SESSION;
		FUNC6(musb->mregs, MUSB_DEVCTL, val);

		val = FUNC4(musb->mregs, MUSB_DEVCTL);
		if (!(val & MUSB_DEVCTL_BDEVICE)) {
			FUNC1(musb->config->gpio_vrsel, 1);
			musb->xceiv->state = OTG_STATE_A_WAIT_BCON;
		} else {
			FUNC1(musb->config->gpio_vrsel, 0);

			/* Ignore VBUSERROR and SUSPEND IRQ */
			val = FUNC3(musb->mregs, MUSB_INTRUSBE);
			val &= ~MUSB_INTR_VBUSERROR;
			FUNC5(musb->mregs, MUSB_INTRUSBE, val);

			val = MUSB_INTR_SUSPEND | MUSB_INTR_VBUSERROR;
			FUNC5(musb->mregs, MUSB_INTRUSB, val);

			val = MUSB_POWER_HSENAB;
			FUNC5(musb->mregs, MUSB_POWER, val);
		}
		FUNC2(&musb_conn_timer, jiffies + TIMER_DELAY);
		break;

	default:
		FUNC0(1, "%s state not handled\n", FUNC7(musb));
		break;
	}
	FUNC9(&musb->lock, flags);

	FUNC0(4, "state is %s\n", FUNC7(musb));
}