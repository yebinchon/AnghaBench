
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct gfs2_inode {int i_gl; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
struct TYPE_2__ {unsigned int s_blocksize; int s_blocksize_bits; } ;


 int EIO ;
 int GFP_NOFS ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int READ ;
 int buffer_mapped (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int create_empty_buffers (struct page*,unsigned int,int ) ;
 struct page* find_or_create_page (struct address_space*,unsigned long,int ) ;
 int gfs2_block_map (struct inode*,unsigned int,struct buffer_head*,int ) ;
 int gfs2_is_writeback (struct gfs2_inode*) ;
 int gfs2_trans_add_data (int ,struct buffer_head*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_has_buffers (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_page (struct page*) ;
 int wait_on_buffer (struct buffer_head*) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static int gfs2_block_truncate_page(struct address_space *mapping, loff_t from)
{
 struct inode *inode = mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 unsigned long index = from >> PAGE_CACHE_SHIFT;
 unsigned offset = from & (PAGE_CACHE_SIZE-1);
 unsigned blocksize, iblock, length, pos;
 struct buffer_head *bh;
 struct page *page;
 int err;

 page = find_or_create_page(mapping, index, GFP_NOFS);
 if (!page)
  return 0;

 blocksize = inode->i_sb->s_blocksize;
 length = blocksize - (offset & (blocksize - 1));
 iblock = index << (PAGE_CACHE_SHIFT - inode->i_sb->s_blocksize_bits);

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

 if (!buffer_mapped(bh)) {
  gfs2_block_map(inode, iblock, bh, 0);

  if (!buffer_mapped(bh))
   goto unlock;
 }


 if (PageUptodate(page))
  set_buffer_uptodate(bh);

 if (!buffer_uptodate(bh)) {
  err = -EIO;
  ll_rw_block(READ, 1, &bh);
  wait_on_buffer(bh);

  if (!buffer_uptodate(bh))
   goto unlock;
  err = 0;
 }

 if (!gfs2_is_writeback(ip))
  gfs2_trans_add_data(ip->i_gl, bh);

 zero_user(page, offset, length);
 mark_buffer_dirty(bh);
unlock:
 unlock_page(page);
 page_cache_release(page);
 return err;
}
