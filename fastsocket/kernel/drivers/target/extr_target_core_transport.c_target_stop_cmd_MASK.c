#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct se_cmd {int transport_state; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  task_stop_comp; } ;

/* Variables and functions */
 int CMD_T_BUSY ; 
 int CMD_T_REQUEST_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(struct se_cmd *cmd, unsigned long *flags)
{
	bool was_active = false;

	if (cmd->transport_state & CMD_T_BUSY) {
		cmd->transport_state |= CMD_T_REQUEST_STOP;
		FUNC2(&cmd->t_state_lock, *flags);

		FUNC0("cmd %p waiting to complete\n", cmd);
		FUNC3(&cmd->task_stop_comp);
		FUNC0("cmd %p stopped successfully\n", cmd);

		FUNC1(&cmd->t_state_lock, *flags);
		cmd->transport_state &= ~CMD_T_REQUEST_STOP;
		cmd->transport_state &= ~CMD_T_BUSY;
		was_active = true;
	}

	return was_active;
}