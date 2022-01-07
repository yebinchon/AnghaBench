
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct list_head {int dummy; } ;


 scalar_t__ PageWriteback (struct page*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int lock_page (struct page*) ;
 int nilfs_copy_replace_page_buffers (struct page*,struct list_head*) ;
 scalar_t__ nilfs_test_page_to_be_frozen (struct page*) ;
 int set_page_writeback (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int nilfs_begin_page_io(struct page *page, struct list_head *out)
{
 if (!page || PageWriteback(page))


  return 0;

 lock_page(page);
 clear_page_dirty_for_io(page);
 set_page_writeback(page);
 unlock_page(page);

 if (nilfs_test_page_to_be_frozen(page)) {
  int err = nilfs_copy_replace_page_buffers(page, out);
  if (unlikely(err))
   return err;
 }
 return 0;
}
