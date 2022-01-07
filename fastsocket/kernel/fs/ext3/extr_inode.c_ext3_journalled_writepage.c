
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {int i_state; } ;
struct TYPE_3__ {struct inode* host; } ;


 int ClearPageChecked (struct page*) ;
 TYPE_2__* EXT3_I (struct inode*) ;
 int EXT3_STATE_JDATA ;
 scalar_t__ IS_ERR (int *) ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 scalar_t__ PageChecked (struct page*) ;
 int block_prepare_write (struct page*,int ,int ,int ) ;
 int block_write_full_page (struct page*,int ,struct writeback_control*) ;
 int do_journal_get_write_access ;
 int ext3_get_block ;
 scalar_t__ ext3_journal_current_handle () ;
 int * ext3_journal_start (struct inode*,int ) ;
 int ext3_journal_stop (int *) ;
 int ext3_journalled_get_block ;
 int ext3_writepage_trans_blocks (struct inode*) ;
 int page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int trace_ext3_journalled_writepage (struct page*) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,int ,int ,int ,int *,int ) ;
 int write_end_fn ;

__attribute__((used)) static int ext3_journalled_writepage(struct page *page,
    struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 handle_t *handle = ((void*)0);
 int ret = 0;
 int err;

 if (ext3_journal_current_handle())
  goto no_write;

 trace_ext3_journalled_writepage(page);
 handle = ext3_journal_start(inode, ext3_writepage_trans_blocks(inode));
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto no_write;
 }

 if (!page_has_buffers(page) || PageChecked(page)) {




  ClearPageChecked(page);
  ret = block_prepare_write(page, 0, PAGE_CACHE_SIZE,
     ext3_journalled_get_block);
  if (ret != 0) {
   ext3_journal_stop(handle);
   goto out_unlock;
  }
  ret = walk_page_buffers(handle, page_buffers(page), 0,
   PAGE_CACHE_SIZE, ((void*)0), do_journal_get_write_access);

  err = walk_page_buffers(handle, page_buffers(page), 0,
    PAGE_CACHE_SIZE, ((void*)0), write_end_fn);
  if (ret == 0)
   ret = err;
  EXT3_I(inode)->i_state |= EXT3_STATE_JDATA;
  unlock_page(page);
 } else {





  ret = block_write_full_page(page, ext3_get_block, wbc);
 }
 err = ext3_journal_stop(handle);
 if (!ret)
  ret = err;
out:
 return ret;

no_write:
 redirty_page_for_writepage(wbc, page);
out_unlock:
 unlock_page(page);
 goto out;
}
