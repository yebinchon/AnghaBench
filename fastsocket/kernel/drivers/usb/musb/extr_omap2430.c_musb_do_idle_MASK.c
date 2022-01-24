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
typedef  int u8 ;
struct musb {int port1_status; int is_active; int /*<<< orphan*/  lock; TYPE_1__* xceiv; int /*<<< orphan*/  mregs; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_BDEVICE ; 
 int MUSB_DEVCTL_SESSION ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int MUSB_PORT_STAT_RESUME ; 
 int /*<<< orphan*/  MUSB_POWER ; 
 int MUSB_POWER_RESUME ; 
#define  OTG_STATE_A_HOST 130 
 int OTG_STATE_A_IDLE ; 
#define  OTG_STATE_A_SUSPEND 129 
#define  OTG_STATE_A_WAIT_BCON 128 
 void* OTG_STATE_B_IDLE ; 
 int USB_PORT_STAT_C_SUSPEND ; 
 int USB_PORT_STAT_SUSPEND ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct musb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned long _musb)
{
	struct musb	*musb = (void *)_musb;
	unsigned long	flags;
#ifdef CONFIG_USB_MUSB_HDRC_HCD
	u8	power;
#endif
	u8	devctl;

	FUNC6(&musb->lock, flags);

	devctl = FUNC3(musb->mregs, MUSB_DEVCTL);

	switch (musb->xceiv->state) {
	case OTG_STATE_A_WAIT_BCON:
		devctl &= ~MUSB_DEVCTL_SESSION;
		FUNC5(musb->mregs, MUSB_DEVCTL, devctl);

		devctl = FUNC3(musb->mregs, MUSB_DEVCTL);
		if (devctl & MUSB_DEVCTL_BDEVICE) {
			musb->xceiv->state = OTG_STATE_B_IDLE;
			FUNC1(musb);
		} else {
			musb->xceiv->state = OTG_STATE_A_IDLE;
			FUNC2(musb);
		}
		break;
#ifdef CONFIG_USB_MUSB_HDRC_HCD
	case OTG_STATE_A_SUSPEND:
		/* finish RESUME signaling? */
		if (musb->port1_status & MUSB_PORT_STAT_RESUME) {
			power = musb_readb(musb->mregs, MUSB_POWER);
			power &= ~MUSB_POWER_RESUME;
			DBG(1, "root port resume stopped, power %02x\n", power);
			musb_writeb(musb->mregs, MUSB_POWER, power);
			musb->is_active = 1;
			musb->port1_status &= ~(USB_PORT_STAT_SUSPEND
						| MUSB_PORT_STAT_RESUME);
			musb->port1_status |= USB_PORT_STAT_C_SUSPEND << 16;
			usb_hcd_poll_rh_status(musb_to_hcd(musb));
			/* NOTE: it might really be A_WAIT_BCON ... */
			musb->xceiv->state = OTG_STATE_A_HOST;
		}
		break;
#endif
#ifdef CONFIG_USB_MUSB_HDRC_HCD
	case OTG_STATE_A_HOST:
		devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
		if (devctl &  MUSB_DEVCTL_BDEVICE)
			musb->xceiv->state = OTG_STATE_B_IDLE;
		else
			musb->xceiv->state = OTG_STATE_A_WAIT_BCON;
#endif
	default:
		break;
	}
	FUNC7(&musb->lock, flags);
}