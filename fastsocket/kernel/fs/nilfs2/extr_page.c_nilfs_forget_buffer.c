
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int b_blocknr; struct page* b_page; } ;


 int ClearPageMappedToDisk (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int __nilfs_clear_page_dirty (struct page*) ;
 int brelse (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int clear_buffer_nilfs_volatile (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 scalar_t__ nilfs_page_buffers_clean (struct page*) ;
 int unlock_buffer (struct buffer_head*) ;

void nilfs_forget_buffer(struct buffer_head *bh)
{
 struct page *page = bh->b_page;

 lock_buffer(bh);
 clear_buffer_nilfs_volatile(bh);
 clear_buffer_dirty(bh);
 if (nilfs_page_buffers_clean(page))
  __nilfs_clear_page_dirty(page);

 clear_buffer_uptodate(bh);
 clear_buffer_mapped(bh);
 bh->b_blocknr = -1;
 ClearPageUptodate(page);
 ClearPageMappedToDisk(page);
 unlock_buffer(bh);
 brelse(bh);
}
