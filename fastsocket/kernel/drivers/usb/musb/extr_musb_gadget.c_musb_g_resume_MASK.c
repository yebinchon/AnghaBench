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
struct musb {int is_active; int /*<<< orphan*/  lock; int /*<<< orphan*/  g; TYPE_2__* gadget_driver; TYPE_1__* xceiv; scalar_t__ is_suspended; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* resume ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
#define  OTG_STATE_B_IDLE 130 
#define  OTG_STATE_B_PERIPHERAL 129 
#define  OTG_STATE_B_WAIT_ACON 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct musb *musb)
{
	musb->is_suspended = 0;
	switch (musb->xceiv->state) {
	case OTG_STATE_B_IDLE:
		break;
	case OTG_STATE_B_WAIT_ACON:
	case OTG_STATE_B_PERIPHERAL:
		musb->is_active = 1;
		if (musb->gadget_driver && musb->gadget_driver->resume) {
			FUNC3(&musb->lock);
			musb->gadget_driver->resume(&musb->g);
			FUNC2(&musb->lock);
		}
		break;
	default:
		FUNC0("unhandled RESUME transition (%s)\n",
				FUNC1(musb));
	}
}