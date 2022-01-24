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
struct se_cmd {int se_cmd_flags; scalar_t__ se_lun; TYPE_1__* se_sess; } ;
struct TYPE_2__ {int /*<<< orphan*/  se_node_acl; } ;

/* Variables and functions */
 int SCF_SCSI_TMR_CDB ; 
 int SCF_SE_LUN_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*) ; 

void FUNC5(struct se_cmd *cmd, int wait_for_tasks)
{
	if (!(cmd->se_cmd_flags & SCF_SE_LUN_CMD)) {
		if (wait_for_tasks && (cmd->se_cmd_flags & SCF_SCSI_TMR_CDB))
			 FUNC4(cmd);

		FUNC3(cmd);
	} else {
		if (wait_for_tasks)
			FUNC4(cmd);

		FUNC0(cmd->se_sess->se_node_acl, cmd);

		if (cmd->se_lun)
			FUNC1(cmd);

		FUNC2(cmd);
	}
}