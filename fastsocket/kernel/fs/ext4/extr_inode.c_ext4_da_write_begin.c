
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


 unsigned int AOP_FLAG_NOFS ;
 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ FALL_BACK_TO_NONDELALLOC ;
 scalar_t__ IS_ERR (int *) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 int block_write_begin (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page**,void**,int ) ;
 int ext4_da_get_block_prep ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;
 scalar_t__ ext4_nonda_switch (int ) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int ext4_truncate_failed_write (struct inode*) ;
 int ext4_write_begin (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page**,void**) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int page_cache_release (struct page*) ;
 int trace_ext4_da_write_begin (struct inode*,int,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ext4_da_write_begin(struct file *file, struct address_space *mapping,
          loff_t pos, unsigned len, unsigned flags,
          struct page **pagep, void **fsdata)
{
 int ret, retries = 0;
 struct page *page;
 pgoff_t index;
 unsigned from, to;
 struct inode *inode = mapping->host;
 handle_t *handle;

 index = pos >> PAGE_CACHE_SHIFT;
 from = pos & (PAGE_CACHE_SIZE - 1);
 to = from + len;

 if (ext4_nonda_switch(inode->i_sb)) {
  *fsdata = (void *)FALL_BACK_TO_NONDELALLOC;
  return ext4_write_begin(file, mapping, pos,
     len, flags, pagep, fsdata);
 }
 *fsdata = (void *)0;
 trace_ext4_da_write_begin(inode, pos, len, flags);
retry:






 handle = ext4_journal_start(inode, 1);
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

 ret = block_write_begin(file, mapping, pos, len, flags, pagep, fsdata,
    ext4_da_get_block_prep);
 if (ret < 0) {
  unlock_page(page);
  ext4_journal_stop(handle);
  page_cache_release(page);





  if (pos + len > inode->i_size)
   ext4_truncate_failed_write(inode);
 }

 if (ret == -ENOSPC && ext4_should_retry_alloc(inode->i_sb, &retries))
  goto retry;
out:
 return ret;
}
