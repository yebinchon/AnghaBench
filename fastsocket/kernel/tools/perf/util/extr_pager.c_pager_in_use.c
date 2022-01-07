
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int perf_config_bool (char*,char const*) ;
 scalar_t__ spawned_pager ;

int pager_in_use(void)
{
 const char *env;

 if (spawned_pager)
  return 1;

 env = getenv("PERF_PAGER_IN_USE");
 return env ? perf_config_bool("PERF_PAGER_IN_USE", env) : 0;
}
