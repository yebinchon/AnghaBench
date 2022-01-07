
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid_within (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct page *
__first_valid_page(unsigned long pfn, unsigned long nr_pages)
{
 int i;
 for (i = 0; i < nr_pages; i++)
  if (pfn_valid_within(pfn + i))
   break;
 if (unlikely(i == nr_pages))
  return ((void*)0);
 return pfn_to_page(pfn + i);
}
