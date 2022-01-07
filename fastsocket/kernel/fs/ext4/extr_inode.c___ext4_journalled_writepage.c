
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int EXT4_STATE_JDATA ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bget_one ;
 int bput_one ;
 int do_journal_get_write_access ;
 int * ext4_journal_start (struct inode*,int ) ;
 int ext4_journal_stop (int *) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,struct buffer_head*,int ,unsigned int,int *,int ) ;
 int write_end_fn ;

__attribute__((used)) static int __ext4_journalled_writepage(struct page *page,
           struct writeback_control *wbc,
           unsigned int len)
{
 struct address_space *mapping = page->mapping;
 struct inode *inode = mapping->host;
 struct buffer_head *page_bufs;
 handle_t *handle = ((void*)0);
 int ret = 0;
 int err;

 page_bufs = page_buffers(page);
 BUG_ON(!page_bufs);
 walk_page_buffers(handle, page_bufs, 0, len, ((void*)0), bget_one);


 unlock_page(page);

 handle = ext4_journal_start(inode, ext4_writepage_trans_blocks(inode));
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto out;
 }

 ret = walk_page_buffers(handle, page_bufs, 0, len, ((void*)0),
    do_journal_get_write_access);

 err = walk_page_buffers(handle, page_bufs, 0, len, ((void*)0),
    write_end_fn);
 if (ret == 0)
  ret = err;
 err = ext4_journal_stop(handle);
 if (!ret)
  ret = err;

 walk_page_buffers(handle, page_bufs, 0, len, ((void*)0), bput_one);
 ext4_set_inode_state(inode, EXT4_STATE_JDATA);
out:
 return ret;
}
