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
typedef  int u32 ;
struct musb {int port1_status; int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget_driver; int /*<<< orphan*/  is_active; int /*<<< orphan*/  idle_timeout; int /*<<< orphan*/  a_wait_bcon; TYPE_1__* xceiv; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
#define  OTG_STATE_A_IDLE 129 
#define  OTG_STATE_A_WAIT_BCON 128 
 int TUSB_PRCM_WBUS ; 
 int TUSB_PRCM_WHOSTDISCON ; 
 int TUSB_PRCM_WID ; 
 int TUSB_PRCM_WVBUS ; 
 scalar_t__ FUNC1 (struct musb*) ; 
 scalar_t__ FUNC2 (struct musb*) ; 
 scalar_t__ FUNC3 (struct musb*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct musb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct musb*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct musb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(unsigned long _musb)
{
	struct musb	*musb = (void *)_musb;
	unsigned long	flags;

	FUNC5(&musb->lock, flags);

	switch (musb->xceiv->state) {
	case OTG_STATE_A_WAIT_BCON:
		if ((musb->a_wait_bcon != 0)
			&& (musb->idle_timeout == 0
				|| FUNC7(jiffies, musb->idle_timeout))) {
			FUNC0(4, "Nothing connected %s, turning off VBUS\n",
					FUNC4(musb));
		}
		/* FALLTHROUGH */
	case OTG_STATE_A_IDLE:
		FUNC9(musb, 0);
	default:
		break;
	}

	if (!musb->is_active) {
		u32	wakeups;

		/* wait until khubd handles port change status */
		if (FUNC1(musb) && (musb->port1_status >> 16))
			goto done;

#ifdef CONFIG_USB_GADGET_MUSB_HDRC
		if (is_peripheral_enabled(musb) && !musb->gadget_driver)
			wakeups = 0;
		else {
			wakeups = TUSB_PRCM_WHOSTDISCON
					| TUSB_PRCM_WBUS
					| TUSB_PRCM_WVBUS;
			if (is_otg_enabled(musb))
				wakeups |= TUSB_PRCM_WID;
		}
#else
		wakeups = TUSB_PRCM_WHOSTDISCON | TUSB_PRCM_WBUS;
#endif
		FUNC8(musb, wakeups);
	}
done:
	FUNC6(&musb->lock, flags);
}