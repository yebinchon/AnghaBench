
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* cfunc ) (char*,int) ;} ;
struct cmd_list_element {scalar_t__ func; TYPE_1__ function; } ;


 scalar_t__ do_cfunc ;

int
cmd_cfunc_eq (struct cmd_list_element *cmd,
       void (*cfunc) (char *args, int from_tty))
{
  return cmd->func == do_cfunc && cmd->function.cfunc == cfunc;
}
