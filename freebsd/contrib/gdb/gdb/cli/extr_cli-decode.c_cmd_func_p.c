
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int * func; } ;



int
cmd_func_p (struct cmd_list_element *cmd)
{
  return (cmd->func != ((void*)0));
}
