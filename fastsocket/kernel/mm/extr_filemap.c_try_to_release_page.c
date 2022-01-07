
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* releasepage ) (struct page*,int ) ;} ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int stub1 (struct page*,int ) ;
 int try_to_free_buffers (struct page*) ;

int try_to_release_page(struct page *page, gfp_t gfp_mask)
{
 struct address_space * const mapping = page->mapping;

 BUG_ON(!PageLocked(page));
 if (PageWriteback(page))
  return 0;

 if (mapping && mapping->a_ops->releasepage)
  return mapping->a_ops->releasepage(page, gfp_mask);
 return try_to_free_buffers(page);
}
