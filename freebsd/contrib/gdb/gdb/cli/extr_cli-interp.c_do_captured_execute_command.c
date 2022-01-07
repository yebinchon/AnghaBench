
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct captured_execute_command_args {int from_tty; int command; } ;


 int GDB_RC_OK ;
 int execute_command (int ,int ) ;

__attribute__((used)) static int
do_captured_execute_command (struct ui_out *uiout, void *data)
{
  struct captured_execute_command_args *args =
    (struct captured_execute_command_args *) data;
  execute_command (args->command, args->from_tty);
  return GDB_RC_OK;
}
