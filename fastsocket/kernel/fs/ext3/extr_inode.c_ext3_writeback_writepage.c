
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ IS_ERR (int *) ;
 int NOBH ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 int block_write_full_page (struct page*,int *,struct writeback_control*) ;
 int buffer_unmapped ;
 int * ext3_get_block ;
 scalar_t__ ext3_journal_current_handle () ;
 int * ext3_journal_start (struct inode*,int ) ;
 int ext3_journal_stop (int *) ;
 scalar_t__ ext3_should_writeback_data (struct inode*) ;
 int ext3_writepage_trans_blocks (struct inode*) ;
 int nobh_writepage (struct page*,int *,struct writeback_control*) ;
 int page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 scalar_t__ test_opt (int ,int ) ;
 int trace_ext3_writeback_writepage (struct page*) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int ext3_writeback_writepage(struct page *page,
    struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 handle_t *handle = ((void*)0);
 int ret = 0;
 int err;

 if (ext3_journal_current_handle())
  goto out_fail;

 trace_ext3_writeback_writepage(page);
 if (page_has_buffers(page)) {
  if (!walk_page_buffers(((void*)0), page_buffers(page), 0,
          PAGE_CACHE_SIZE, ((void*)0), buffer_unmapped)) {


   return block_write_full_page(page, ((void*)0), wbc);
  }
 }

 handle = ext3_journal_start(inode, ext3_writepage_trans_blocks(inode));
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto out_fail;
 }

 if (test_opt(inode->i_sb, NOBH) && ext3_should_writeback_data(inode))
  ret = nobh_writepage(page, ext3_get_block, wbc);
 else
  ret = block_write_full_page(page, ext3_get_block, wbc);

 err = ext3_journal_stop(handle);
 if (!ret)
  ret = err;
 return ret;

out_fail:
 redirty_page_for_writepage(wbc, page);
 unlock_page(page);
 return ret;
}
