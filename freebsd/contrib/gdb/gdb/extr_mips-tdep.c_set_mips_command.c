
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_commands ;
 int gdb_stdout ;
 int help_list (int ,char*,int ,int ) ;
 int printf_unfiltered (char*) ;
 int setmipscmdlist ;

__attribute__((used)) static void
set_mips_command (char *args, int from_tty)
{
  printf_unfiltered
    ("\"set mips\" must be followed by an appropriate subcommand.\n");
  help_list (setmipscmdlist, "set mips ", all_commands, gdb_stdout);
}
