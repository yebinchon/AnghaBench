
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int set_backtrace_cmdlist ;

__attribute__((used)) static void
set_backtrace_cmd (char *args, int from_tty)
{
  help_list (set_backtrace_cmdlist, "set backtrace ", -1, gdb_stdout);
}
