
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;


 scalar_t__ transport_cmd_check_stop_to_fabric (struct se_cmd*) ;
 int transport_put_cmd (struct se_cmd*) ;

void transport_cmd_finish_abort(struct se_cmd *cmd, int remove)
{
 if (transport_cmd_check_stop_to_fabric(cmd))
  return;
 if (remove)
  transport_put_cmd(cmd);
}
