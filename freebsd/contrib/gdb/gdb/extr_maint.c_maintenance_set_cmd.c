
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int maintenance_set_cmdlist ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
maintenance_set_cmd (char *args, int from_tty)
{
  printf_unfiltered ("\"maintenance set\" must be followed by the name of a set command.\n");
  help_list (maintenance_set_cmdlist, "maintenance set ", -1, gdb_stdout);
}
