
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageDirty (struct page*) ;
 int PageWriteback (struct page*) ;
 int __nilfs_clear_page_dirty (struct page*) ;
 int __nilfs_end_page_io (struct page*,int) ;
 scalar_t__ buffer_nilfs_node (int ) ;
 int lock_page (struct page*) ;
 scalar_t__ nilfs_page_buffers_clean (struct page*) ;
 int page_buffers (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void nilfs_end_page_io(struct page *page, int err)
{
 if (!page)
  return;

 if (buffer_nilfs_node(page_buffers(page)) && !PageWriteback(page)) {




  if (PageDirty(page)) {







   lock_page(page);
   if (nilfs_page_buffers_clean(page))
    __nilfs_clear_page_dirty(page);
   unlock_page(page);
  }
  return;
 }

 __nilfs_end_page_io(page, err);
}
