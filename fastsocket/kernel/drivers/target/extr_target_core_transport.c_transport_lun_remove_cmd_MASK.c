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
struct se_lun {int /*<<< orphan*/  lun_cmd_lock; } ;
struct se_cmd {int transport_state; int /*<<< orphan*/  se_lun_node; int /*<<< orphan*/  t_state_lock; struct se_lun* se_lun; } ;

/* Variables and functions */
 int CMD_T_DEV_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*) ; 

__attribute__((used)) static void FUNC5(struct se_cmd *cmd)
{
	struct se_lun *lun = cmd->se_lun;
	unsigned long flags;

	if (!lun)
		return;

	FUNC2(&cmd->t_state_lock, flags);
	if (cmd->transport_state & CMD_T_DEV_ACTIVE) {
		cmd->transport_state &= ~CMD_T_DEV_ACTIVE;
		FUNC4(cmd);
	}
	FUNC3(&cmd->t_state_lock, flags);

	FUNC2(&lun->lun_cmd_lock, flags);
	if (!FUNC1(&cmd->se_lun_node))
		FUNC0(&cmd->se_lun_node);
	FUNC3(&lun->lun_cmd_lock, flags);
}