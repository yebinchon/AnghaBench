
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char const*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
rs6000_parse_yes_no_option (const char *name, const char *value, int *flag)
{
  if (value == 0)
    return;
  else if (!strcmp (value, "yes"))
    *flag = 1;
  else if (!strcmp (value, "no"))
    *flag = 0;
  else
    error ("unknown -m%s= option specified: '%s'", name, value);
}
