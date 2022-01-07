
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eh_region {int region_number; } ;



int
get_eh_region_number (struct eh_region *region)
{
  return region->region_number;
}
