
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int printf_unfiltered (char*) ;
 int tekhex_cmdlist ;

__attribute__((used)) static void
tekhex_dump_command (char *cmd, int from_tty)
{
  printf_unfiltered ("\"dump tekhex\" must be followed by a subcommand.\n");
  help_list (tekhex_cmdlist, "dump tekhex ", -1, gdb_stdout);
}
