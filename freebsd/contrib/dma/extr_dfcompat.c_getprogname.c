
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* program_invocation_short_name ;

const char *
getprogname(void)
{
 return (program_invocation_short_name);
}
