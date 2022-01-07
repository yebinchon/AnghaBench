
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_blocknr; int b_bdev; struct page* b_page; } ;
typedef int sector_t ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int EXT4_GET_BLOCKS_CREATE ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int ext4_get_blocks (int *,struct inode*,int ,int,struct buffer_head*,int ) ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int jbd2_journal_dirty_metadata (int *,struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unmap_underlying_metadata (int ,int ) ;

__attribute__((used)) static int ext4_journalled_get_block(struct inode *inode, sector_t iblock,
         struct buffer_head *bh, int create)
{
 handle_t *handle = ext4_journal_current_handle();
 int ret;


 BUG_ON(!bh->b_page);

 ret = ext4_get_blocks(handle, inode, iblock, 1, bh,
         create ? EXT4_GET_BLOCKS_CREATE : 0);
 if (ret > 0) {
  if (buffer_new(bh)) {
   struct page *page = bh->b_page;





   if (PageUptodate(page)) {
    ret = ext4_journal_get_write_access(handle, bh);
    if (ret < 0)
     return ret;
    unmap_underlying_metadata(bh->b_bdev,
         bh->b_blocknr);
    clear_buffer_new(bh);
    set_buffer_uptodate(bh);
    ret = jbd2_journal_dirty_metadata(handle, bh);
    if (ret < 0)
     return ret;
   }
  }
  ret = 0;
 }
 return ret;
}
