
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int kimage_entry_t ;


 int PAGE_SHIFT ;
 int kimage_free_pages (struct page*) ;
 struct page* pfn_to_page (int) ;

__attribute__((used)) static void kimage_free_entry(kimage_entry_t entry)
{
 struct page *page;

 page = pfn_to_page(entry >> PAGE_SHIFT);
 kimage_free_pages(page);
}
