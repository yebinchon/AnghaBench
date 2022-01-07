
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {unsigned int i_disksize; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 unsigned int block_write_end (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ;
 int * ext4_journal_current_handle () ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_update_i_disksize (struct inode*,unsigned int) ;
 int i_size_write (struct inode*,unsigned int) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ext4_generic_write_end(struct file *file,
      struct address_space *mapping,
      loff_t pos, unsigned len, unsigned copied,
      struct page *page, void *fsdata)
{
 int i_size_changed = 0;
 struct inode *inode = mapping->host;
 handle_t *handle = ext4_journal_current_handle();

 copied = block_write_end(file, mapping, pos, len, copied, page, fsdata);
 if (pos + copied > inode->i_size) {
  i_size_write(inode, pos + copied);
  i_size_changed = 1;
 }

 if (pos + copied > EXT4_I(inode)->i_disksize) {




  ext4_update_i_disksize(inode, (pos + copied));
  i_size_changed = 1;
 }
 unlock_page(page);
 page_cache_release(page);







 if (i_size_changed)
  ext4_mark_inode_dirty(handle, inode);

 return copied;
}
