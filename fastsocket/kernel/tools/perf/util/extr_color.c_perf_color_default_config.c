
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_config_colorbool (char const*,char const*,int) ;
 int perf_default_config (char const*,char const*,void*) ;
 int perf_use_color_default ;
 int strcmp (char const*,char*) ;

int perf_color_default_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "color.ui")) {
  perf_use_color_default = perf_config_colorbool(var, value, -1);
  return 0;
 }

 return perf_default_config(var, value, cb);
}
