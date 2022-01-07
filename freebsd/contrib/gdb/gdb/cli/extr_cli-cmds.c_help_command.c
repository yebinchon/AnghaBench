
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_cmd (char*,int ) ;

__attribute__((used)) static void
help_command (char *command, int from_tty)
{
  help_cmd (command, gdb_stdout);
}
