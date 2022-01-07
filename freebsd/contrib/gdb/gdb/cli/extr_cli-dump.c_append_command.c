
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_cmdlist ;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
append_command (char *cmd, int from_tty)
{
  printf_unfiltered ("\"append\" must be followed by a subcommand.\n\n");
  help_list (dump_cmdlist, "append ", -1, gdb_stdout);
}
