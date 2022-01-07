
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char const*) ;

int config_error_nonbool(const char *var)
{
 return error("Missing value for '%s'", var);
}
