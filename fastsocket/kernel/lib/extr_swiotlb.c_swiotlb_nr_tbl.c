
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long io_tlb_nslabs ;

unsigned long swiotlb_nr_tbl(void)
{
 return io_tlb_nslabs;
}
