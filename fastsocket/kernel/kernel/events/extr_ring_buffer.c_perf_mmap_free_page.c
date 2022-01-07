
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int * mapping; } ;


 int __free_page (struct page*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void perf_mmap_free_page(unsigned long addr)
{
 struct page *page = virt_to_page((void *)addr);

 page->mapping = ((void*)0);
 __free_page(page);
}
