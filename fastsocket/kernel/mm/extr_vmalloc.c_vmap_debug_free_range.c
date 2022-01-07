
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int vunmap_page_range (unsigned long,unsigned long) ;

__attribute__((used)) static void vmap_debug_free_range(unsigned long start, unsigned long end)
{
}
