
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int alloca (scalar_t__) ;
 struct ui_file* cli_out_set_stream (int ,struct ui_file*) ;
 int cli_uiout ;
 struct ui_file* gdb_stdout ;
 int safe_execute_command (int ,char*,int) ;
 char* strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
cli_interpreter_exec (void *data, const char *command_str)
{
  int result;
  struct ui_file *old_stream;



  char *str = strcpy (alloca (strlen (command_str) + 1), command_str);







  old_stream = cli_out_set_stream (cli_uiout, gdb_stdout);
  result = safe_execute_command (cli_uiout, str, 1);
  cli_out_set_stream (cli_uiout, old_stream);
  return result;
}
