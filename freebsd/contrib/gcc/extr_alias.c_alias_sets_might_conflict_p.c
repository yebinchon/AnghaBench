
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HOST_WIDE_INT ;



int
alias_sets_might_conflict_p (HOST_WIDE_INT set1, HOST_WIDE_INT set2)
{
  if (set1 == 0 || set2 == 0 || set1 == set2)
    return 1;

  return 0;
}
