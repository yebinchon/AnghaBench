
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eh_region {int may_contain_throw; struct eh_region* outer; } ;



void
note_eh_region_may_contain_throw (struct eh_region *region)
{
  while (region && !region->may_contain_throw)
    {
      region->may_contain_throw = 1;
      region = region->outer;
    }
}
