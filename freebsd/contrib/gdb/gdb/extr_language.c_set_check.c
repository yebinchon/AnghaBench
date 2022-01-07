
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int printf_unfiltered (char*) ;
 int setchecklist ;

__attribute__((used)) static void
set_check (char *ignore, int from_tty)
{
  printf_unfiltered (
     "\"set check\" must be followed by the name of a check subcommand.\n");
  help_list (setchecklist, "set check ", -1, gdb_stdout);
}
