
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pager_config {int val; int cmd; } ;


 int perf_config_bool (char const*,char const*) ;
 int prefixcmp (char const*,char*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int pager_command_config(const char *var, const char *value, void *data)
{
 struct pager_config *c = data;
 if (!prefixcmp(var, "pager.") && !strcmp(var + 6, c->cmd))
  c->val = perf_config_bool(var, value);
 return 0;
}
