
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int ihex_cmdlist ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
ihex_dump_command (char *cmd, int from_tty)
{
  printf_unfiltered ("\"dump ihex\" must be followed by a subcommand.\n");
  help_list (ihex_cmdlist, "dump ihex ", -1, gdb_stdout);
}
