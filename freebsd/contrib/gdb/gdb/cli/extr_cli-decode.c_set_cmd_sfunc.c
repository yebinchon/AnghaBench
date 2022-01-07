
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sfunc; } ;
struct cmd_list_element {TYPE_1__ function; int * func; } ;
typedef int cmd_sfunc_ftype ;


 int * do_sfunc ;

void
set_cmd_sfunc (struct cmd_list_element *cmd, cmd_sfunc_ftype *sfunc)
{
  if (sfunc == ((void*)0))
    cmd->func = ((void*)0);
  else
    cmd->func = do_sfunc;
  cmd->function.sfunc = sfunc;
}
