
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_CACHE_SIZE ;
 int do_invalidatepage (struct page*,unsigned int) ;
 scalar_t__ page_has_private (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,int ) ;

__attribute__((used)) static inline void truncate_partial_page(struct page *page, unsigned partial)
{
 zero_user_segment(page, partial, PAGE_CACHE_SIZE);
 if (page_has_private(page))
  do_invalidatepage(page, partial);
}
