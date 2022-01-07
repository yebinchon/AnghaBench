
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;


 int transport_cmd_check_stop (struct se_cmd*,int) ;

__attribute__((used)) static int transport_cmd_check_stop_to_fabric(struct se_cmd *cmd)
{
 return transport_cmd_check_stop(cmd, 1);
}
