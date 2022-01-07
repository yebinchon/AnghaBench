
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageError (struct page*) ;
 int NR_WRITEBACK ;
 int SetPageError (struct page*) ;
 scalar_t__ TestClearPageWriteback (struct page*) ;
 int __set_page_dirty_nobuffers (struct page*) ;
 scalar_t__ buffer_nilfs_allocated (int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 int end_page_writeback (struct page*) ;
 int nilfs_page_buffers_clean (struct page*) ;
 int page_buffers (struct page*) ;

__attribute__((used)) static void __nilfs_end_page_io(struct page *page, int err)
{
 if (!err) {
  if (!nilfs_page_buffers_clean(page))
   __set_page_dirty_nobuffers(page);
  ClearPageError(page);
 } else {
  __set_page_dirty_nobuffers(page);
  SetPageError(page);
 }

 if (buffer_nilfs_allocated(page_buffers(page))) {
  if (TestClearPageWriteback(page))
   dec_zone_page_state(page, NR_WRITEBACK);
 } else
  end_page_writeback(page);
}
