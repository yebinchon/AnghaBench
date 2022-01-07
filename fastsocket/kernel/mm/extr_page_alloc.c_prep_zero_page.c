
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int VM_BUG_ON (int) ;
 int __GFP_HIGHMEM ;
 int clear_highpage (struct page*) ;
 scalar_t__ in_interrupt () ;

__attribute__((used)) static inline void prep_zero_page(struct page *page, int order, gfp_t gfp_flags)
{
 int i;





 VM_BUG_ON((gfp_flags & __GFP_HIGHMEM) && in_interrupt());
 for (i = 0; i < (1 << order); i++)
  clear_highpage(page + i);
}
