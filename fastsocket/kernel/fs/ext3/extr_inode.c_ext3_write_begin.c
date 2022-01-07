
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_size; int i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef int handle_t ;


 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ IS_ERR (int *) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 int block_write_begin (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page**,void**,int ) ;
 int do_journal_get_write_access ;
 scalar_t__ ext3_can_truncate (struct inode*) ;
 int ext3_get_block ;
 int * ext3_journal_start (struct inode*,int) ;
 int ext3_journal_stop (int *) ;
 int ext3_journalled_get_block ;
 int ext3_orphan_add (int *,struct inode*) ;
 scalar_t__ ext3_should_journal_data (struct inode*) ;
 scalar_t__ ext3_should_retry_alloc (int ,int*) ;
 int ext3_truncate_failed_write (struct inode*) ;
 int ext3_writepage_trans_blocks (struct inode*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int trace_ext3_write_begin (struct inode*,int,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,int ,unsigned int,unsigned int,int *,int ) ;

__attribute__((used)) static int ext3_write_begin(struct file *file, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned flags,
    struct page **pagep, void **fsdata)
{
 struct inode *inode = mapping->host;
 int ret;
 handle_t *handle;
 int retries = 0;
 struct page *page;
 pgoff_t index;
 unsigned from, to;


 int needed_blocks = ext3_writepage_trans_blocks(inode) + 1;

 trace_ext3_write_begin(inode, pos, len, flags);

 index = pos >> PAGE_CACHE_SHIFT;
 from = pos & (PAGE_CACHE_SIZE - 1);
 to = from + len;

retry:
 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page)
  return -ENOMEM;
 *pagep = page;

 handle = ext3_journal_start(inode, needed_blocks);
 if (IS_ERR(handle)) {
  unlock_page(page);
  page_cache_release(page);
  ret = PTR_ERR(handle);
  goto out;
 }
 if (ext3_should_journal_data(inode)) {
  ret = block_write_begin(file, mapping, pos, len, flags, pagep,
     fsdata, ext3_journalled_get_block);
  if (ret)
   goto write_begin_failed;
  ret = walk_page_buffers(handle, page_buffers(page), from, to,
     ((void*)0), do_journal_get_write_access);
 } else {
  ret = block_write_begin(file, mapping, pos, len, flags, pagep,
     fsdata, ext3_get_block);
 }

write_begin_failed:
 if (ret) {
  if (pos + len > inode->i_size && ext3_can_truncate(inode))
   ext3_orphan_add(handle, inode);
  ext3_journal_stop(handle);
  unlock_page(page);
  page_cache_release(page);
  if (pos + len > inode->i_size)
   ext3_truncate_failed_write(inode);
 }
 if (ret == -ENOSPC && ext3_should_retry_alloc(inode->i_sb, &retries))
  goto retry;
out:
 return ret;
}
