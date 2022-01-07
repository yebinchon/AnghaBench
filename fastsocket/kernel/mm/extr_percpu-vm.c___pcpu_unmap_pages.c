
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 int unmap_kernel_range_noflush (unsigned long,int) ;

__attribute__((used)) static void __pcpu_unmap_pages(unsigned long addr, int nr_pages)
{
 unmap_kernel_range_noflush(addr, nr_pages << PAGE_SHIFT);
}
