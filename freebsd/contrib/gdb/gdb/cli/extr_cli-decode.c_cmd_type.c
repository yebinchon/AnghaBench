
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int type; } ;
typedef enum cmd_types { ____Placeholder_cmd_types } cmd_types ;



enum cmd_types
cmd_type (struct cmd_list_element *cmd)
{
  return cmd->type;
}
