
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int is_vmalloc_addr (void*) ;
 struct page* virt_to_page (void*) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static inline struct page *
mem_to_page(
 void *addr)
{
 if ((!is_vmalloc_addr(addr))) {
  return virt_to_page(addr);
 } else {
  return vmalloc_to_page(addr);
 }
}
