
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int printf_filtered (char*) ;
 int unsetlist ;

__attribute__((used)) static void
unset_command (char *args, int from_tty)
{
  printf_filtered ("\"unset\" must be followed by the name of ");
  printf_filtered ("an unset subcommand.\n");
  help_list (unsetlist, "unset ", -1, gdb_stdout);
}
