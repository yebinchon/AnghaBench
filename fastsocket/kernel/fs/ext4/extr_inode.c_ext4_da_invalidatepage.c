
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int ext4_da_page_release_reservation (struct page*,unsigned long) ;
 int ext4_invalidatepage (struct page*,unsigned long) ;
 int page_has_buffers (struct page*) ;

__attribute__((used)) static void ext4_da_invalidatepage(struct page *page, unsigned long offset)
{



 BUG_ON(!PageLocked(page));
 if (!page_has_buffers(page))
  goto out;

 ext4_da_page_release_reservation(page, offset);

out:
 ext4_invalidatepage(page, offset);

 return;
}
