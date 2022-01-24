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
struct TYPE_2__ {scalar_t__ vfeStopAckPending; int /*<<< orphan*/  vstate; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VFE_MSG_ID_RESET_ACK ; 
 int /*<<< orphan*/  VFE_MSG_ID_STOP_ACK ; 
 int /*<<< orphan*/  VFE_STATE_IDLE ; 
 TYPE_1__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(void)
{
	/* unsigned long flags; */

	/* @todo This is causing issues, need further investigate */
	/* spin_lock_irqsave(&ctrl->state_lock, flags); */
	ctrl->vstate = VFE_STATE_IDLE;
	/* spin_unlock_irqrestore(&ctrl->state_lock, flags); */

	if (ctrl->vfeStopAckPending == TRUE) {
		ctrl->vfeStopAckPending = FALSE;
		FUNC0(VFE_MSG_ID_STOP_ACK);
	} else {
		FUNC1();
		FUNC0(VFE_MSG_ID_RESET_ACK);
	}
}