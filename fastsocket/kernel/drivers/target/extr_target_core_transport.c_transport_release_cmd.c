
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int se_cmd_flags; scalar_t__ t_task_cdb; scalar_t__ __t_task_cdb; scalar_t__ check_release; TYPE_1__* se_tfo; int se_sess; int se_tmr_req; } ;
struct TYPE_2__ {int (* release_cmd ) (struct se_cmd*) ;} ;


 int BUG_ON (int) ;
 int SCF_SCSI_TMR_CDB ;
 int core_tmr_release_req (int ) ;
 int kfree (scalar_t__) ;
 int stub1 (struct se_cmd*) ;
 int target_put_sess_cmd (int ,struct se_cmd*) ;

__attribute__((used)) static void transport_release_cmd(struct se_cmd *cmd)
{
 BUG_ON(!cmd->se_tfo);

 if (cmd->se_cmd_flags & SCF_SCSI_TMR_CDB)
  core_tmr_release_req(cmd->se_tmr_req);
 if (cmd->t_task_cdb != cmd->__t_task_cdb)
  kfree(cmd->t_task_cdb);




  if (cmd->check_release != 0) {
  target_put_sess_cmd(cmd->se_sess, cmd);
  return;
 }
 cmd->se_tfo->release_cmd(cmd);
}
