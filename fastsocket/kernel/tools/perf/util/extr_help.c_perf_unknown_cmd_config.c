
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmdname (int *,char const*,int ) ;
 int aliases ;
 int autocorrect ;
 int perf_config_int (char const*,char const*) ;
 int perf_default_config (char const*,char const*,void*) ;
 int prefixcmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int perf_unknown_cmd_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "help.autocorrect"))
  autocorrect = perf_config_int(var,value);

 if (!prefixcmp(var, "alias."))
  add_cmdname(&aliases, var + 6, strlen(var + 6));

 return perf_default_config(var, value, cb);
}
