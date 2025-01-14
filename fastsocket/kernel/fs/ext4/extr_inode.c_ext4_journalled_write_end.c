
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_size; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int i_disksize; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_JDATA ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ ext4_can_truncate (struct inode*) ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_truncate_failed_write (struct inode*) ;
 int ext4_update_i_disksize (struct inode*,int) ;
 int i_size_write (struct inode*,int) ;
 int page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_zero_new_buffers (struct page*,unsigned int,unsigned int) ;
 int trace_ext4_journalled_write_end (struct inode*,int,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,int ,unsigned int,unsigned int,int*,int ) ;
 int write_end_fn ;

__attribute__((used)) static int ext4_journalled_write_end(struct file *file,
         struct address_space *mapping,
         loff_t pos, unsigned len, unsigned copied,
         struct page *page, void *fsdata)
{
 handle_t *handle = ext4_journal_current_handle();
 struct inode *inode = mapping->host;
 int ret = 0, ret2;
 int partial = 0;
 unsigned from, to;
 loff_t new_i_size;

 trace_ext4_journalled_write_end(inode, pos, len, copied);
 from = pos & (PAGE_CACHE_SIZE - 1);
 to = from + len;

 if (copied < len) {
  if (!PageUptodate(page))
   copied = 0;
  page_zero_new_buffers(page, from+copied, to);
 }

 ret = walk_page_buffers(handle, page_buffers(page), from,
    to, &partial, write_end_fn);
 if (!partial)
  SetPageUptodate(page);
 new_i_size = pos + copied;
 if (new_i_size > inode->i_size)
  i_size_write(inode, pos+copied);
 ext4_set_inode_state(inode, EXT4_STATE_JDATA);
 if (new_i_size > EXT4_I(inode)->i_disksize) {
  ext4_update_i_disksize(inode, new_i_size);
  ret2 = ext4_mark_inode_dirty(handle, inode);
  if (!ret)
   ret = ret2;
 }

 unlock_page(page);
 page_cache_release(page);
 if (pos + len > inode->i_size && ext4_can_truncate(inode))




  ext4_orphan_add(handle, inode);

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
