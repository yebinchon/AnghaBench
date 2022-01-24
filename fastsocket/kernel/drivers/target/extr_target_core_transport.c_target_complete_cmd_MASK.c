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
typedef  scalar_t__ u8 ;
struct se_device {TYPE_1__* transport; } ;
struct se_cmd {int transport_state; int se_cmd_flags; int /*<<< orphan*/  work; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  t_state; int /*<<< orphan*/  t_transport_stop_comp; int /*<<< orphan*/  task_stop_comp; int /*<<< orphan*/  t_data_sg; scalar_t__ scsi_status; struct se_device* se_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* transport_complete ) (struct se_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int CMD_T_ABORTED ; 
 int CMD_T_ACTIVE ; 
 int CMD_T_BUSY ; 
 int CMD_T_COMPLETE ; 
 int CMD_T_FAILED ; 
 int CMD_T_REQUEST_STOP ; 
 int CMD_T_STOP ; 
 scalar_t__ GOOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SCF_TRANSPORT_TASK_SENSE ; 
 int /*<<< orphan*/  TRANSPORT_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_complete_failure_work ; 
 int /*<<< orphan*/  target_complete_ok_work ; 
 int /*<<< orphan*/  target_completion_wq ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*) ; 

void FUNC7(struct se_cmd *cmd, u8 scsi_status)
{
	struct se_device *dev = cmd->se_dev;
	int success = scsi_status == GOOD;
	unsigned long flags;

	cmd->scsi_status = scsi_status;


	FUNC3(&cmd->t_state_lock, flags);
	cmd->transport_state &= ~CMD_T_BUSY;

	if (dev && dev->transport->transport_complete) {
		dev->transport->transport_complete(cmd,
				cmd->t_data_sg,
				FUNC6(cmd));
		if (cmd->se_cmd_flags & SCF_TRANSPORT_TASK_SENSE)
			success = 1;
	}

	/*
	 * See if we are waiting to complete for an exception condition.
	 */
	if (cmd->transport_state & CMD_T_REQUEST_STOP) {
		FUNC4(&cmd->t_state_lock, flags);
		FUNC1(&cmd->task_stop_comp);
		return;
	}

	if (!success)
		cmd->transport_state |= CMD_T_FAILED;

	/*
	 * Check for case where an explict ABORT_TASK has been received
	 * and transport_wait_for_tasks() will be waiting for completion..
	 */
	if (cmd->transport_state & CMD_T_ABORTED &&
	    cmd->transport_state & CMD_T_STOP) {
		FUNC4(&cmd->t_state_lock, flags);
		FUNC1(&cmd->t_transport_stop_comp);
		return;
	} else if (cmd->transport_state & CMD_T_FAILED) {
		FUNC0(&cmd->work, target_complete_failure_work);
	} else {
		FUNC0(&cmd->work, target_complete_ok_work);
	}

	cmd->t_state = TRANSPORT_COMPLETE;
	cmd->transport_state |= (CMD_T_COMPLETE | CMD_T_ACTIVE);
	FUNC4(&cmd->t_state_lock, flags);

	FUNC2(target_completion_wq, &cmd->work);
}