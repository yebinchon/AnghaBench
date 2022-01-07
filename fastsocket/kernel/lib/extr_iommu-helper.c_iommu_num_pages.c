
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;

unsigned long iommu_num_pages(unsigned long addr, unsigned long len,
         unsigned long io_page_size)
{
 unsigned long size = (addr & (io_page_size - 1)) + len;

 return DIV_ROUND_UP(size, io_page_size);
}
