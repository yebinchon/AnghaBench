
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct target_core_fabric_ops {int dummy; } ;
struct se_session {int dummy; } ;
struct se_cmd {int data_direction; int sam_task_attr; unsigned char* sense_buffer; int state_active; int data_length; struct se_session* se_sess; struct target_core_fabric_ops* se_tfo; int transport_state; int t_state_lock; int task_stop_comp; int cmd_wait_comp; int t_transport_stop_comp; int transport_lun_stop_comp; int transport_lun_fe_stop_comp; int state_list; int se_cmd_list; int se_qf_node; int se_delayed_node; int se_lun_node; } ;


 int CMD_T_DEV_ACTIVE ;
 int INIT_LIST_HEAD (int *) ;
 int init_completion (int *) ;
 int spin_lock_init (int *) ;

void transport_init_se_cmd(
 struct se_cmd *cmd,
 struct target_core_fabric_ops *tfo,
 struct se_session *se_sess,
 u32 data_length,
 int data_direction,
 int task_attr,
 unsigned char *sense_buffer)
{
 INIT_LIST_HEAD(&cmd->se_lun_node);
 INIT_LIST_HEAD(&cmd->se_delayed_node);
 INIT_LIST_HEAD(&cmd->se_qf_node);
 INIT_LIST_HEAD(&cmd->se_cmd_list);
 INIT_LIST_HEAD(&cmd->state_list);
 init_completion(&cmd->transport_lun_fe_stop_comp);
 init_completion(&cmd->transport_lun_stop_comp);
 init_completion(&cmd->t_transport_stop_comp);
 init_completion(&cmd->cmd_wait_comp);
 init_completion(&cmd->task_stop_comp);
 spin_lock_init(&cmd->t_state_lock);
 cmd->transport_state = CMD_T_DEV_ACTIVE;

 cmd->se_tfo = tfo;
 cmd->se_sess = se_sess;
 cmd->data_length = data_length;
 cmd->data_direction = data_direction;
 cmd->sam_task_attr = task_attr;
 cmd->sense_buffer = sense_buffer;

 cmd->state_active = 0;
}
