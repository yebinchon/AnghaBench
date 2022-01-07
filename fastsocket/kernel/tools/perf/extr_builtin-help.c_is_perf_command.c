
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_in_cmdlist (int *,char const*) ;
 int main_cmds ;
 int other_cmds ;

__attribute__((used)) static int is_perf_command(const char *s)
{
 return is_in_cmdlist(&main_cmds, s) ||
  is_in_cmdlist(&other_cmds, s);
}
