
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int macrolist ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
macro_command (char *arg, int from_tty)
{
  printf_unfiltered
    ("\"macro\" must be followed by the name of a macro command.\n");
  help_list (macrolist, "macro ", -1, gdb_stdout);
}
