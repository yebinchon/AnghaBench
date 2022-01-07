
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __free_page (int ) ;
 int pfn_to_page (int const) ;
 int totalram_pages ;

__attribute__((used)) static void release_pages_by_pfn(const u32 pfns[], unsigned int num)
{
 unsigned int i;

 for (i = 0; i < num; i++) {
  __free_page(pfn_to_page(pfns[i]));
  totalram_pages++;
 }
}
