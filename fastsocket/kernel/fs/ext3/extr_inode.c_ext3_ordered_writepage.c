
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {int s_blocksize; } ;
struct TYPE_3__ {struct inode* host; } ;


 int BH_Dirty ;
 int BH_Uptodate ;
 scalar_t__ IS_ERR (int *) ;
 int J_ASSERT (int ) ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 int PageLocked (struct page*) ;
 int bget_one ;
 int block_write_full_page (struct page*,int *,struct writeback_control*) ;
 int bput_one ;
 int buffer_unmapped ;
 int create_empty_buffers (struct page*,int ,int) ;
 int * ext3_get_block ;
 scalar_t__ ext3_journal_current_handle () ;
 int * ext3_journal_start (struct inode*,int ) ;
 int ext3_journal_stop (int *) ;
 int ext3_writepage_trans_blocks (struct inode*) ;
 int journal_dirty_data_fn ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int trace_ext3_ordered_writepage (struct page*) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,struct buffer_head*,int ,int ,int *,int ) ;

__attribute__((used)) static int ext3_ordered_writepage(struct page *page,
    struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 struct buffer_head *page_bufs;
 handle_t *handle = ((void*)0);
 int ret = 0;
 int err;

 J_ASSERT(PageLocked(page));





 if (ext3_journal_current_handle())
  goto out_fail;

 trace_ext3_ordered_writepage(page);
 if (!page_has_buffers(page)) {
  create_empty_buffers(page, inode->i_sb->s_blocksize,
    (1 << BH_Dirty)|(1 << BH_Uptodate));
  page_bufs = page_buffers(page);
 } else {
  page_bufs = page_buffers(page);
  if (!walk_page_buffers(((void*)0), page_bufs, 0, PAGE_CACHE_SIZE,
           ((void*)0), buffer_unmapped)) {


   return block_write_full_page(page, ((void*)0), wbc);
  }
 }
 handle = ext3_journal_start(inode, ext3_writepage_trans_blocks(inode));

 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto out_fail;
 }

 walk_page_buffers(handle, page_bufs, 0,
   PAGE_CACHE_SIZE, ((void*)0), bget_one);

 ret = block_write_full_page(page, ext3_get_block, wbc);
 if (ret == 0) {
  err = walk_page_buffers(handle, page_bufs, 0, PAGE_CACHE_SIZE,
     ((void*)0), journal_dirty_data_fn);
  if (!ret)
   ret = err;
 }
 walk_page_buffers(handle, page_bufs, 0,
   PAGE_CACHE_SIZE, ((void*)0), bput_one);
 err = ext3_journal_stop(handle);
 if (!ret)
  ret = err;
 return ret;

out_fail:
 redirty_page_for_writepage(wbc, page);
 unlock_page(page);
 return ret;
}
