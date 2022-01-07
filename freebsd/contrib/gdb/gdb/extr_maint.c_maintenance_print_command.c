
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int maintenanceprintlist ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
maintenance_print_command (char *arg, int from_tty)
{
  printf_unfiltered ("\"maintenance print\" must be followed by the name of a print command.\n");
  help_list (maintenanceprintlist, "maintenance print ", -1, gdb_stdout);
}
