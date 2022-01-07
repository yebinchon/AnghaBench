
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int color_parse_mem (char const*,int ,char const*,char*) ;
 int strlen (char const*) ;

void color_parse(const char *value, const char *var, char *dst)
{
 color_parse_mem(value, strlen(value), var, dst);
}
