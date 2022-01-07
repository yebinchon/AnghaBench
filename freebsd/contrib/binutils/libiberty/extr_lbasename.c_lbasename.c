
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISALPHA (char const) ;
 scalar_t__ IS_DIR_SEPARATOR (char const) ;

const char *
lbasename (const char *name)
{
  const char *base;







  for (base = name; *name; name++)
    if (IS_DIR_SEPARATOR (*name))
      base = name + 1;

  return base;
}
