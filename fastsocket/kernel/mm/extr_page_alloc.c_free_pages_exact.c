
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (size_t) ;
 scalar_t__ PAGE_SIZE ;
 int free_page (unsigned long) ;

void free_pages_exact(void *virt, size_t size)
{
 unsigned long addr = (unsigned long)virt;
 unsigned long end = addr + PAGE_ALIGN(size);

 while (addr < end) {
  free_page(addr);
  addr += PAGE_SIZE;
 }
}
