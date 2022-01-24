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
struct se_cmd {int se_cmd_flags; scalar_t__ t_task_cdb; scalar_t__ __t_task_cdb; scalar_t__ check_release; TYPE_1__* se_tfo; int /*<<< orphan*/  se_sess; int /*<<< orphan*/  se_tmr_req; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_cmd ) (struct se_cmd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SCF_SCSI_TMR_CDB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct se_cmd*) ; 

__attribute__((used)) static void FUNC5(struct se_cmd *cmd)
{
	FUNC0(!cmd->se_tfo);

	if (cmd->se_cmd_flags & SCF_SCSI_TMR_CDB)
		FUNC1(cmd->se_tmr_req);
	if (cmd->t_task_cdb != cmd->__t_task_cdb)
		FUNC2(cmd->t_task_cdb);
	/*
	 * If this cmd has been setup with target_get_sess_cmd(), drop
	 * the kref and call ->release_cmd() in kref callback.
	 */
	 if (cmd->check_release != 0) {
		FUNC4(cmd->se_sess, cmd);
		return;
	}
	cmd->se_tfo->release_cmd(cmd);
}