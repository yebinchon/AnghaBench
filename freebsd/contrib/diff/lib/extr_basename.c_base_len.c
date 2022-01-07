
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSLASH (char const) ;
 size_t strlen (char const*) ;

size_t
base_len (char const *name)
{
  size_t len;

  for (len = strlen (name); 1 < len && ISSLASH (name[len - 1]); len--)
    continue;

  return len;
}
