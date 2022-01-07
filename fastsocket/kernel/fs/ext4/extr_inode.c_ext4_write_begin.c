
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_size; int i_sb; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef int handle_t ;


 unsigned int AOP_FLAG_NOFS ;
 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ IS_ERR (int *) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 int block_write_begin (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page**,void**,int ) ;
 int do_journal_get_write_access ;
 scalar_t__ ext4_can_truncate (struct inode*) ;
 int ext4_get_block ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_journalled_get_block ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int ext4_truncate_failed_write (struct inode*) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int trace_ext4_write_begin (struct inode*,int,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,int ,unsigned int,unsigned int,int *,int ) ;

__attribute__((used)) static int ext4_write_begin(struct file *file, struct address_space *mapping,
       loff_t pos, unsigned len, unsigned flags,
       struct page **pagep, void **fsdata)
{
 struct inode *inode = mapping->host;
 int ret, needed_blocks;
 handle_t *handle;
 int retries = 0;
 struct page *page;
 pgoff_t index;
 unsigned from, to;

 trace_ext4_write_begin(inode, pos, len, flags);




 needed_blocks = ext4_writepage_trans_blocks(inode) + 1;
 index = pos >> PAGE_CACHE_SHIFT;
 from = pos & (PAGE_CACHE_SIZE - 1);
 to = from + len;

retry:
 handle = ext4_journal_start(inode, needed_blocks);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto out;
 }



 flags |= AOP_FLAG_NOFS;

 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page) {
  ext4_journal_stop(handle);
  ret = -ENOMEM;
  goto out;
 }
 *pagep = page;

 if (!ext4_should_journal_data(inode))
  ret = block_write_begin(file, mapping, pos, len, flags, pagep,
    fsdata, ext4_get_block);
 else {
  ret = block_write_begin(file, mapping, pos, len, flags, pagep,
    fsdata, ext4_journalled_get_block);
  if (!ret)
   ret = walk_page_buffers(handle, page_buffers(page),
    from, to, ((void*)0), do_journal_get_write_access);
 }

 if (ret) {
  unlock_page(page);
  page_cache_release(page);
  if (pos + len > inode->i_size && ext4_can_truncate(inode))
   ext4_orphan_add(handle, inode);

  ext4_journal_stop(handle);
  if (pos + len > inode->i_size) {
   ext4_truncate_failed_write(inode);






   if (inode->i_nlink)
    ext4_orphan_del(((void*)0), inode);
  }
 }

 if (ret == -ENOSPC && ext4_should_retry_alloc(inode->i_sb, &retries))
  goto retry;
out:
 return ret;
}
