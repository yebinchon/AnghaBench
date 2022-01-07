
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int is_power_of_2 (unsigned long) ;

int iommu_is_span_boundary(unsigned int index, unsigned int nr,
      unsigned long shift,
      unsigned long boundary_size)
{
 BUG_ON(!is_power_of_2(boundary_size));

 shift = (shift + index) & (boundary_size - 1);
 return shift + nr > boundary_size;
}
