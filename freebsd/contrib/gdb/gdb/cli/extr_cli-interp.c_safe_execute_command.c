
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct captured_execute_command_args {char* command; int from_tty; } ;
typedef enum gdb_rc { ____Placeholder_gdb_rc } gdb_rc ;


 int RETURN_MASK_ALL ;
 int catch_exceptions (struct ui_out*,int ,struct captured_execute_command_args*,int *,int ) ;
 int do_captured_execute_command ;

__attribute__((used)) static enum gdb_rc
safe_execute_command (struct ui_out *uiout, char *command, int from_tty)
{
  struct captured_execute_command_args args;
  args.command = command;
  args.from_tty = from_tty;
  return catch_exceptions (uiout, do_captured_execute_command, &args,
      ((void*)0), RETURN_MASK_ALL);
}
