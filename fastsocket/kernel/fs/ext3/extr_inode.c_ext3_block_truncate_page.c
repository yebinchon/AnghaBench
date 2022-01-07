
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
typedef int handle_t ;
typedef int ext3_fsblk_t ;
struct TYPE_2__ {unsigned int s_blocksize; int s_blocksize_bits; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int NOBH ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int READ ;
 scalar_t__ buffer_freed (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int create_empty_buffers (struct page*,unsigned int,int ) ;
 int ext3_get_block (struct inode*,unsigned int,struct buffer_head*,int ) ;
 int ext3_journal_dirty_data (int *,struct buffer_head*) ;
 int ext3_journal_dirty_metadata (int *,struct buffer_head*) ;
 int ext3_journal_get_write_access (int *,struct buffer_head*) ;
 scalar_t__ ext3_should_journal_data (struct inode*) ;
 scalar_t__ ext3_should_order_data (struct inode*) ;
 scalar_t__ ext3_should_writeback_data (struct inode*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_has_buffers (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ test_opt (TYPE_1__*,int ) ;
 int unlock_page (struct page*) ;
 int wait_on_buffer (struct buffer_head*) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static int ext3_block_truncate_page(handle_t *handle, struct page *page,
  struct address_space *mapping, loff_t from)
{
 ext3_fsblk_t index = from >> PAGE_CACHE_SHIFT;
 unsigned offset = from & (PAGE_CACHE_SIZE-1);
 unsigned blocksize, iblock, length, pos;
 struct inode *inode = mapping->host;
 struct buffer_head *bh;
 int err = 0;

 blocksize = inode->i_sb->s_blocksize;
 length = blocksize - (offset & (blocksize - 1));
 iblock = index << (PAGE_CACHE_SHIFT - inode->i_sb->s_blocksize_bits);





 if (!page_has_buffers(page) && test_opt(inode->i_sb, NOBH) &&
      ext3_should_writeback_data(inode) && PageUptodate(page)) {
  zero_user(page, offset, length);
  set_page_dirty(page);
  goto unlock;
 }

 if (!page_has_buffers(page))
  create_empty_buffers(page, blocksize, 0);


 bh = page_buffers(page);
 pos = blocksize;
 while (offset >= pos) {
  bh = bh->b_this_page;
  iblock++;
  pos += blocksize;
 }

 err = 0;
 if (buffer_freed(bh)) {
  BUFFER_TRACE(bh, "freed: skip");
  goto unlock;
 }

 if (!buffer_mapped(bh)) {
  BUFFER_TRACE(bh, "unmapped");
  ext3_get_block(inode, iblock, bh, 0);

  if (!buffer_mapped(bh)) {
   BUFFER_TRACE(bh, "still unmapped");
   goto unlock;
  }
 }


 if (PageUptodate(page))
  set_buffer_uptodate(bh);

 if (!buffer_uptodate(bh)) {
  err = -EIO;
  ll_rw_block(READ, 1, &bh);
  wait_on_buffer(bh);

  if (!buffer_uptodate(bh))
   goto unlock;
 }

 if (ext3_should_journal_data(inode)) {
  BUFFER_TRACE(bh, "get write access");
  err = ext3_journal_get_write_access(handle, bh);
  if (err)
   goto unlock;
 }

 zero_user(page, offset, length);
 BUFFER_TRACE(bh, "zeroed end of block");

 err = 0;
 if (ext3_should_journal_data(inode)) {
  err = ext3_journal_dirty_metadata(handle, bh);
 } else {
  if (ext3_should_order_data(inode))
   err = ext3_journal_dirty_data(handle, bh);
  mark_buffer_dirty(bh);
 }

unlock:
 unlock_page(page);
 page_cache_release(page);
 return err;
}
