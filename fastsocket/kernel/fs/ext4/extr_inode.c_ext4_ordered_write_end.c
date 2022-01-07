
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {unsigned int i_size; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;
typedef int handle_t ;


 scalar_t__ ext4_can_truncate (struct inode*) ;
 int ext4_generic_write_end (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ;
 int ext4_jbd2_file_inode (int *,struct inode*) ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_stop (int *) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_truncate_failed_write (struct inode*) ;
 int page_cache_release (struct page*) ;
 int trace_ext4_ordered_write_end (struct inode*,unsigned int,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ext4_ordered_write_end(struct file *file,
      struct address_space *mapping,
      loff_t pos, unsigned len, unsigned copied,
      struct page *page, void *fsdata)
{
 handle_t *handle = ext4_journal_current_handle();
 struct inode *inode = mapping->host;
 int ret = 0, ret2;

 trace_ext4_ordered_write_end(inode, pos, len, copied);
 ret = ext4_jbd2_file_inode(handle, inode);

 if (ret == 0) {
  ret2 = ext4_generic_write_end(file, mapping, pos, len, copied,
       page, fsdata);
  copied = ret2;
  if (pos + len > inode->i_size && ext4_can_truncate(inode))




   ext4_orphan_add(handle, inode);
  if (ret2 < 0)
   ret = ret2;
 } else {
  unlock_page(page);
  page_cache_release(page);
 }

 ret2 = ext4_journal_stop(handle);
 if (!ret)
  ret = ret2;

 if (pos + len > inode->i_size) {
  ext4_truncate_failed_write(inode);





  if (inode->i_nlink)
   ext4_orphan_del(((void*)0), inode);
 }


 return ret ? ret : copied;
}
