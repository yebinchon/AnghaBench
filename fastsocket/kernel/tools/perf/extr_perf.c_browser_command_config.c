
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pager_config {int val; int cmd; } ;


 int perf_config_bool (char const*,char const*) ;
 int prefixcmp (char const*,char*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int browser_command_config(const char *var, const char *value, void *data)
{
 struct pager_config *c = data;
 if (!prefixcmp(var, "tui.") && !strcmp(var + 4, c->cmd))
  c->val = perf_config_bool(var, value);
 if (!prefixcmp(var, "gtk.") && !strcmp(var + 4, c->cmd))
  c->val = perf_config_bool(var, value) ? 2 : 0;
 return 0;
}
