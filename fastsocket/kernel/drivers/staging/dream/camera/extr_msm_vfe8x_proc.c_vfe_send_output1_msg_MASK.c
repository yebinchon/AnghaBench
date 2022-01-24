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
struct vfe_msg_output {int dummy; } ;
struct vfe_message {int /*<<< orphan*/  _u; int /*<<< orphan*/  _d; } ;
struct TYPE_3__ {void* ackPending; } ;
struct TYPE_4__ {scalar_t__ vstate; int vfeRequestedSnapShotCount; scalar_t__ vfeOperationMode; TYPE_1__ viewPath; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* TRUE ; 
 int /*<<< orphan*/  VFE_MSG_ID_OUTPUT1 ; 
 scalar_t__ VFE_START_OPERATION_MODE_SNAPSHOT ; 
 scalar_t__ VFE_STATE_ACTIVE ; 
 TYPE_2__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (struct vfe_message*) ; 
 struct vfe_message* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vfe_message*,int) ; 

__attribute__((used)) static void FUNC4(
	struct vfe_msg_output *pPayload)
{
	/* unsigned long flags; */
	struct vfe_message *msg;

	msg = FUNC1(sizeof(struct vfe_message), GFP_ATOMIC);
	if (!msg)
		return;

	/* @todo This is causing issues, need further investigate */
	/* spin_lock_irqsave(&ctrl->state_lock, flags); */
	if (ctrl->vstate != VFE_STATE_ACTIVE) {
		FUNC0(msg);
		goto output1_msg_done;
	}

	msg->_d = VFE_MSG_ID_OUTPUT1;
	FUNC2(&(msg->_u),
		(void *)pPayload, sizeof(struct vfe_msg_output));

	FUNC3(VFE_MSG_ID_OUTPUT1,
		msg, sizeof(struct vfe_message));

	ctrl->viewPath.ackPending = TRUE;

	if (!(ctrl->vfeRequestedSnapShotCount <= 3) &&
			(ctrl->vfeOperationMode ==
			 VFE_START_OPERATION_MODE_SNAPSHOT))
		ctrl->viewPath.ackPending = TRUE;

output1_msg_done:
	/* spin_unlock_irqrestore(&ctrl->state_lock, flags); */
	return;
}