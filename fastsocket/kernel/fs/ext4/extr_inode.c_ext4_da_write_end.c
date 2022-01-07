
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int i_disksize; int i_data_sem; } ;


 int BUG () ;
 TYPE_1__* EXT4_I (struct inode*) ;


 int FALL_BACK_TO_NONDELALLOC ;
 int PAGE_CACHE_SIZE ;
 int down_write (int *) ;
 scalar_t__ ext4_da_should_update_i_disksize (struct page*,unsigned long) ;
 int ext4_inode_journal_mode (struct inode*) ;
 int ext4_jbd2_file_inode (int *,struct inode*) ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_ordered_write_end (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ;
 scalar_t__ ext4_should_order_data (struct inode*) ;
 int ext4_writeback_write_end (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ;
 int generic_write_end (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ;
 int trace_ext4_da_write_end (struct inode*,int,unsigned int,unsigned int) ;
 int up_write (int *) ;

__attribute__((used)) static int ext4_da_write_end(struct file *file,
        struct address_space *mapping,
        loff_t pos, unsigned len, unsigned copied,
        struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;
 int ret = 0, ret2;
 handle_t *handle = ext4_journal_current_handle();
 loff_t new_i_size;
 unsigned long start, end;
 int write_mode = (int)(unsigned long)fsdata;

 if (write_mode == FALL_BACK_TO_NONDELALLOC) {
  switch (ext4_inode_journal_mode(inode)) {
  case 129:
   return ext4_ordered_write_end(file, mapping, pos,
     len, copied, page, fsdata);
  case 128:
   return ext4_writeback_write_end(file, mapping, pos,
     len, copied, page, fsdata);
  default:
   BUG();
  }
 }

 trace_ext4_da_write_end(inode, pos, len, copied);
 start = pos & (PAGE_CACHE_SIZE - 1);
 end = start + copied - 1;







 new_i_size = pos + copied;
 if (copied && new_i_size > EXT4_I(inode)->i_disksize) {
  if (ext4_da_should_update_i_disksize(page, end)) {
   down_write(&EXT4_I(inode)->i_data_sem);
   if (new_i_size > EXT4_I(inode)->i_disksize) {




    if (ext4_should_order_data(inode))
     ret = ext4_jbd2_file_inode(handle,
           inode);

    EXT4_I(inode)->i_disksize = new_i_size;
   }
   up_write(&EXT4_I(inode)->i_data_sem);




   ext4_mark_inode_dirty(handle, inode);
  }
 }
 ret2 = generic_write_end(file, mapping, pos, len, copied,
       page, fsdata);
 copied = ret2;
 if (ret2 < 0)
  ret = ret2;
 ret2 = ext4_journal_stop(handle);
 if (!ret)
  ret = ret2;

 return ret ? ret : copied;
}
