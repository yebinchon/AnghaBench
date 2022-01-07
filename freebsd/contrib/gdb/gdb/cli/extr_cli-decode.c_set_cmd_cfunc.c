
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cfunc; } ;
struct cmd_list_element {TYPE_1__ function; int * func; } ;
typedef int cmd_cfunc_ftype ;


 int * do_cfunc ;

void
set_cmd_cfunc (struct cmd_list_element *cmd, cmd_cfunc_ftype *cfunc)
{
  if (cfunc == ((void*)0))
    cmd->func = ((void*)0);
  else
    cmd->func = do_cfunc;
  cmd->function.cfunc = cfunc;
}
