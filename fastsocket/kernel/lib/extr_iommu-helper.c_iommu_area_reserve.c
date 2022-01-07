
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_bit (unsigned long,unsigned long*) ;

void iommu_area_reserve(unsigned long *map, unsigned long i, int len)
{
 unsigned long end = i + len;
 while (i < end) {
  __set_bit(i, map);
  i++;
 }
}
