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
typedef  int /*<<< orphan*/  u32 ;
struct target_core_fabric_ops {int dummy; } ;
struct se_session {int dummy; } ;
struct se_cmd {int data_direction; int sam_task_attr; unsigned char* sense_buffer; int state_active; int /*<<< orphan*/  data_length; struct se_session* se_sess; struct target_core_fabric_ops* se_tfo; int /*<<< orphan*/  transport_state; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  task_stop_comp; int /*<<< orphan*/  cmd_wait_comp; int /*<<< orphan*/  t_transport_stop_comp; int /*<<< orphan*/  transport_lun_stop_comp; int /*<<< orphan*/  transport_lun_fe_stop_comp; int /*<<< orphan*/  state_list; int /*<<< orphan*/  se_cmd_list; int /*<<< orphan*/  se_qf_node; int /*<<< orphan*/  se_delayed_node; int /*<<< orphan*/  se_lun_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_T_DEV_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(
	struct se_cmd *cmd,
	struct target_core_fabric_ops *tfo,
	struct se_session *se_sess,
	u32 data_length,
	int data_direction,
	int task_attr,
	unsigned char *sense_buffer)
{
	FUNC0(&cmd->se_lun_node);
	FUNC0(&cmd->se_delayed_node);
	FUNC0(&cmd->se_qf_node);
	FUNC0(&cmd->se_cmd_list);
	FUNC0(&cmd->state_list);
	FUNC1(&cmd->transport_lun_fe_stop_comp);
	FUNC1(&cmd->transport_lun_stop_comp);
	FUNC1(&cmd->t_transport_stop_comp);
	FUNC1(&cmd->cmd_wait_comp);
	FUNC1(&cmd->task_stop_comp);
	FUNC2(&cmd->t_state_lock);
	cmd->transport_state = CMD_T_DEV_ACTIVE;

	cmd->se_tfo = tfo;
	cmd->se_sess = se_sess;
	cmd->data_length = data_length;
	cmd->data_direction = data_direction;
	cmd->sam_task_attr = task_attr;
	cmd->sense_buffer = sense_buffer;

	cmd->state_active = false;
}