
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (size_t) ;
 unsigned int PAGE_SIZE ;
 int free_page (unsigned long) ;
 int split_page (int ,unsigned int) ;
 int virt_to_page (void*) ;

__attribute__((used)) static void *make_alloc_exact(unsigned long addr, unsigned order, size_t size)
{
 if (addr) {
  unsigned long alloc_end = addr + (PAGE_SIZE << order);
  unsigned long used = addr + PAGE_ALIGN(size);

  split_page(virt_to_page((void *)addr), order);
  while (used < alloc_end) {
   free_page(used);
   used += PAGE_SIZE;
  }
 }
 return (void *)addr;
}
