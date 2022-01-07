
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pager_config {char const* cmd; int val; } ;


 int browser_command_config ;
 int perf_config (int ,struct pager_config*) ;

__attribute__((used)) static int check_browser_config(const char *cmd)
{
 struct pager_config c;
 c.cmd = cmd;
 c.val = -1;
 perf_config(browser_command_config, &c);
 return c.val;
}
