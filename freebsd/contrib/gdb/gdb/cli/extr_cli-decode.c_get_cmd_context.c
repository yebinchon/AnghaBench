
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {void* context; } ;



void *
get_cmd_context (struct cmd_list_element *cmd)
{
  return cmd->context;
}
