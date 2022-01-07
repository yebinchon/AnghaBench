
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HOST_WIDE_INT ;


 int new_alias_set () ;

__attribute__((used)) static HOST_WIDE_INT
ix86_GOT_alias_set (void)
{
  static HOST_WIDE_INT set = -1;
  if (set == -1)
    set = new_alias_set ();
  return set;
}
