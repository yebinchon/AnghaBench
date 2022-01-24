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
struct se_lun {int dummy; } ;
struct se_cmd {int transport_state; TYPE_1__* se_tfo; int /*<<< orphan*/  transport_lun_stop_comp; int /*<<< orphan*/  t_state_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_task_tag ) (struct se_cmd*) ;} ;

/* Variables and functions */
 int CMD_T_BUSY ; 
 int CMD_T_LUN_FE_STOP ; 
 int CMD_T_LUN_STOP ; 
 int CMD_T_SENT ; 
 int CMD_T_STOP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (char*,struct se_cmd*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct se_cmd*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct se_cmd *cmd, struct se_lun *lun)
{
	unsigned long flags;
	int ret = 0;

	/*
	 * If the frontend has already requested this struct se_cmd to
	 * be stopped, we can safely ignore this struct se_cmd.
	 */
	FUNC1(&cmd->t_state_lock, flags);
	if (cmd->transport_state & CMD_T_STOP) {
		cmd->transport_state &= ~CMD_T_LUN_STOP;

		FUNC0("ConfigFS ITT[0x%08x] - CMD_T_STOP, skipping\n",
			 cmd->se_tfo->get_task_tag(cmd));
		FUNC2(&cmd->t_state_lock, flags);
		FUNC7(cmd, false);
		return -EPERM;
	}
	cmd->transport_state |= CMD_T_LUN_FE_STOP;
	FUNC2(&cmd->t_state_lock, flags);

	// XXX: audit task_flags checks.
	FUNC1(&cmd->t_state_lock, flags);
	if ((cmd->transport_state & CMD_T_BUSY) &&
	    (cmd->transport_state & CMD_T_SENT)) {
		if (!FUNC6(cmd, &flags))
			ret++;
	}
	FUNC2(&cmd->t_state_lock, flags);

	FUNC0("ConfigFS: cmd: %p stop tasks ret:"
			" %d\n", cmd, ret);
	if (!ret) {
		FUNC0("ConfigFS: ITT[0x%08x] - stopping cmd....\n",
				cmd->se_tfo->get_task_tag(cmd));
		FUNC8(&cmd->transport_lun_stop_comp);
		FUNC0("ConfigFS: ITT[0x%08x] - stopped cmd....\n",
				cmd->se_tfo->get_task_tag(cmd));
	}

	return 0;
}