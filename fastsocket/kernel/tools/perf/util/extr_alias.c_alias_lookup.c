
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* alias_key ;
 int alias_lookup_cb ;
 char* alias_val ;
 int perf_config (int ,int *) ;

char *alias_lookup(const char *alias)
{
 alias_key = alias;
 alias_val = ((void*)0);
 perf_config(alias_lookup_cb, ((void*)0));
 return alias_val;
}
