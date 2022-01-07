
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int se_cmd_flags; scalar_t__ se_lun; TYPE_1__* se_sess; } ;
struct TYPE_2__ {int se_node_acl; } ;


 int SCF_SCSI_TMR_CDB ;
 int SCF_SE_LUN_CMD ;
 int core_dec_lacl_count (int ,struct se_cmd*) ;
 int transport_lun_remove_cmd (struct se_cmd*) ;
 int transport_put_cmd (struct se_cmd*) ;
 int transport_release_cmd (struct se_cmd*) ;
 int transport_wait_for_tasks (struct se_cmd*) ;

void transport_generic_free_cmd(struct se_cmd *cmd, int wait_for_tasks)
{
 if (!(cmd->se_cmd_flags & SCF_SE_LUN_CMD)) {
  if (wait_for_tasks && (cmd->se_cmd_flags & SCF_SCSI_TMR_CDB))
    transport_wait_for_tasks(cmd);

  transport_release_cmd(cmd);
 } else {
  if (wait_for_tasks)
   transport_wait_for_tasks(cmd);

  core_dec_lacl_count(cmd->se_sess->se_node_acl, cmd);

  if (cmd->se_lun)
   transport_lun_remove_cmd(cmd);

  transport_put_cmd(cmd);
 }
}
