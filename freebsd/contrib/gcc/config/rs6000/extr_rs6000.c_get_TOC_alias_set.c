
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int new_alias_set () ;
 int set ;

int
get_TOC_alias_set (void)
{
  if (set == -1)
    set = new_alias_set ();
  return set;
}
