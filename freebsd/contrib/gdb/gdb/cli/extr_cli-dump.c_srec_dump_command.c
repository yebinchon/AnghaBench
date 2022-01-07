
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int printf_unfiltered (char*) ;
 int srec_cmdlist ;

__attribute__((used)) static void
srec_dump_command (char *cmd, int from_tty)
{
  printf_unfiltered ("\"dump srec\" must be followed by a subcommand.\n");
  help_list (srec_cmdlist, "dump srec ", -1, gdb_stdout);
}
