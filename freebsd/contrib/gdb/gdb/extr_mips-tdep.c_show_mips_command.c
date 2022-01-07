
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_commands ;
 int gdb_stdout ;
 int help_list (int ,char*,int ,int ) ;
 int showmipscmdlist ;

__attribute__((used)) static void
show_mips_command (char *args, int from_tty)
{
  help_list (showmipscmdlist, "show mips ", all_commands, gdb_stdout);
}
