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
struct se_cmd {int transport_state; int /*<<< orphan*/  t_state_lock; scalar_t__ (* execute_cmd ) (struct se_cmd*) ;} ;
typedef  scalar_t__ sense_reason_t ;

/* Variables and functions */
 int CMD_T_BUSY ; 
 int CMD_T_SENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct se_cmd *cmd)
{
	sense_reason_t ret;

	FUNC0(&cmd->t_state_lock);
	cmd->transport_state |= (CMD_T_BUSY|CMD_T_SENT);
	FUNC1(&cmd->t_state_lock);

	if (cmd->execute_cmd) {
		ret = cmd->execute_cmd(cmd);
		if (ret) {
			FUNC0(&cmd->t_state_lock);
			cmd->transport_state &= ~(CMD_T_BUSY|CMD_T_SENT);
			FUNC1(&cmd->t_state_lock);

			FUNC3(cmd, ret);
		}
	}
}