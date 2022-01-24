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
struct se_cmd {int transport_state; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  t_fe_count; } ;

/* Variables and functions */
 int CMD_T_DEV_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*) ; 

__attribute__((used)) static void FUNC7(struct se_cmd *cmd)
{
	unsigned long flags;

	FUNC2(&cmd->t_state_lock, flags);
	if (FUNC1(&cmd->t_fe_count) &&
	    !FUNC0(&cmd->t_fe_count)) {
		FUNC3(&cmd->t_state_lock, flags);
		return;
	}

	if (cmd->transport_state & CMD_T_DEV_ACTIVE) {
		cmd->transport_state &= ~CMD_T_DEV_ACTIVE;
		FUNC4(cmd);
	}
	FUNC3(&cmd->t_state_lock, flags);

	FUNC5(cmd);
	FUNC6(cmd);
	return;
}