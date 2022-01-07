
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_bit (unsigned long,unsigned long*) ;

void iommu_area_free(unsigned long *map, unsigned long start, unsigned int nr)
{
 unsigned long end = start + nr;

 while (start < end) {
  __clear_bit(start, map);
  start++;
 }
}
