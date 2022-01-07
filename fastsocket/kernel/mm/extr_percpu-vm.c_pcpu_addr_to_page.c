
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static struct page *pcpu_addr_to_page(void *addr)
{
 return vmalloc_to_page(addr);
}
