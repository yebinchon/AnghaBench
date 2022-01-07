
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_node_acl {int dummy; } ;
struct se_cmd {TYPE_1__* se_sess; } ;
struct TYPE_2__ {struct se_node_acl* se_node_acl; } ;


 int transport_cmd_finish_abort (struct se_cmd*,int) ;
 int transport_send_task_abort (struct se_cmd*) ;

__attribute__((used)) static void core_tmr_handle_tas_abort(
 struct se_node_acl *tmr_nacl,
 struct se_cmd *cmd,
 int tas,
 int fe_count)
{
 if (!fe_count) {
  transport_cmd_finish_abort(cmd, 1);
  return;
 }



 if ((tmr_nacl &&
      (tmr_nacl == cmd->se_sess->se_node_acl)) || tas)
  transport_send_task_abort(cmd);

 transport_cmd_finish_abort(cmd, 0);
}
