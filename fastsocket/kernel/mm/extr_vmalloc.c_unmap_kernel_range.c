
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_cache_vunmap (unsigned long,unsigned long) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int vunmap_page_range (unsigned long,unsigned long) ;

void unmap_kernel_range(unsigned long addr, unsigned long size)
{
 unsigned long end = addr + size;

 flush_cache_vunmap(addr, end);
 vunmap_page_range(addr, end);
 flush_tlb_kernel_range(addr, end);
}
