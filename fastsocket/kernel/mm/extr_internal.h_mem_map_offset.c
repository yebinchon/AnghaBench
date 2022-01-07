
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MAX_ORDER_NR_PAGES ;
 scalar_t__ page_to_pfn (struct page*) ;
 struct page* pfn_to_page (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct page *mem_map_offset(struct page *base, int offset)
{
 if (unlikely(offset >= MAX_ORDER_NR_PAGES))
  return pfn_to_page(page_to_pfn(base) + offset);
 return base + offset;
}
