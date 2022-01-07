
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int printf_unfiltered (char*) ;
 int setdebuglist ;

__attribute__((used)) static void
set_debug (char *arg, int from_tty)
{
  printf_unfiltered ("\"set debug\" must be followed by the name of a print subcommand.\n");
  help_list (setdebuglist, "set debug ", -1, gdb_stdout);
}
