
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_cmd (char*,int ,int ,char*,int *) ;
 int class_support ;
 int cmdlist ;
 int interpreter_completer ;
 int interpreter_exec_cmd ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;

void
_initialize_interpreter (void)
{
  struct cmd_list_element *c;

  c = add_cmd ("interpreter-exec", class_support,
        interpreter_exec_cmd,
        "Execute a command in an interpreter.  It takes two arguments:\nThe first argument is the name of the interpreter to use.\nThe second argument is the command to execute.\n", &cmdlist);


  set_cmd_completer (c, interpreter_completer);
}
