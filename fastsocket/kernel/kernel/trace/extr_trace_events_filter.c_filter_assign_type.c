
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILTER_DYN_STRING ;
 int FILTER_OTHER ;
 int FILTER_STATIC_STRING ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strstr (char const*,char*) ;

int filter_assign_type(const char *type)
{
 if (strstr(type, "__data_loc") && strstr(type, "char"))
  return FILTER_DYN_STRING;

 if (strchr(type, '[') && strstr(type, "char"))
  return FILTER_STATIC_STRING;

 return FILTER_OTHER;
}
