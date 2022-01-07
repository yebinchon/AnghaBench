
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_FREE_PAGES ;
 unsigned long global_page_state (int ) ;
 unsigned long global_reclaimable_pages () ;
 scalar_t__ highmem_dirtyable_memory (unsigned long) ;
 int vm_highmem_is_dirtyable ;

unsigned long determine_dirtyable_memory(void)
{
 unsigned long x;

 x = global_page_state(NR_FREE_PAGES) + global_reclaimable_pages();

 if (!vm_highmem_is_dirtyable)
  x -= highmem_dirtyable_memory(x);

 return x + 1;
}
