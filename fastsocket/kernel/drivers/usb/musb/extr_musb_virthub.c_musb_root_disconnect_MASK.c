#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int is_a_peripheral; } ;
struct musb {int port1_status; TYPE_3__* xceiv; scalar_t__ is_active; TYPE_2__ g; } ;
struct TYPE_6__ {int state; TYPE_1__* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  b_hnp_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
#define  OTG_STATE_A_HOST 130 
 int OTG_STATE_A_PERIPHERAL ; 
#define  OTG_STATE_A_SUSPEND 129 
 int OTG_STATE_A_WAIT_BCON ; 
#define  OTG_STATE_A_WAIT_VFALL 128 
 int OTG_STATE_B_IDLE ; 
 int USB_PORT_FEAT_C_CONNECTION ; 
 int USB_PORT_FEAT_POWER ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct musb *musb)
{
	musb->port1_status = (1 << USB_PORT_FEAT_POWER)
			| (1 << USB_PORT_FEAT_C_CONNECTION);

	FUNC4(FUNC2(musb));
	musb->is_active = 0;

	switch (musb->xceiv->state) {
	case OTG_STATE_A_SUSPEND:
#ifdef	CONFIG_USB_MUSB_OTG
		if (is_otg_enabled(musb)
				&& musb->xceiv->host->b_hnp_enable) {
			musb->xceiv->state = OTG_STATE_A_PERIPHERAL;
			musb->g.is_a_peripheral = 1;
			break;
		}
#endif
		/* FALLTHROUGH */
	case OTG_STATE_A_HOST:
		musb->xceiv->state = OTG_STATE_A_WAIT_BCON;
		musb->is_active = 0;
		break;
	case OTG_STATE_A_WAIT_VFALL:
		musb->xceiv->state = OTG_STATE_B_IDLE;
		break;
	default:
		FUNC0(1, "host disconnect (%s)\n", FUNC3(musb));
	}
}