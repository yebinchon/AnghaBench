
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;



__attribute__((used)) static inline struct page *
__page_find_buddy(struct page *page, unsigned long page_idx, unsigned int order)
{
 unsigned long buddy_idx = page_idx ^ (1 << order);

 return page + (buddy_idx - page_idx);
}
