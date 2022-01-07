
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int i_disksize; int i_state; } ;


 TYPE_1__* EXT3_I (struct inode*) ;
 int EXT3_STATE_JDATA ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ ext3_can_truncate (struct inode*) ;
 int * ext3_journal_current_handle () ;
 int ext3_journal_stop (int *) ;
 int ext3_mark_inode_dirty (int *,struct inode*) ;
 int ext3_orphan_add (int *,struct inode*) ;
 int ext3_truncate_failed_write (struct inode*) ;
 int i_size_write (struct inode*,int) ;
 int page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_zero_new_buffers (struct page*,unsigned int,unsigned int) ;
 int trace_ext3_journalled_write_end (struct inode*,int,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,int ,unsigned int,unsigned int,int*,int ) ;
 int write_end_fn ;

__attribute__((used)) static int ext3_journalled_write_end(struct file *file,
    struct address_space *mapping,
    loff_t pos, unsigned len, unsigned copied,
    struct page *page, void *fsdata)
{
 handle_t *handle = ext3_journal_current_handle();
 struct inode *inode = mapping->host;
 int ret = 0, ret2;
 int partial = 0;
 unsigned from, to;

 trace_ext3_journalled_write_end(inode, pos, len, copied);
 from = pos & (PAGE_CACHE_SIZE - 1);
 to = from + len;

 if (copied < len) {
  if (!PageUptodate(page))
   copied = 0;
  page_zero_new_buffers(page, from + copied, to);
  to = from + copied;
 }

 ret = walk_page_buffers(handle, page_buffers(page), from,
    to, &partial, write_end_fn);
 if (!partial)
  SetPageUptodate(page);

 if (pos + copied > inode->i_size)
  i_size_write(inode, pos + copied);




 if (pos + len > inode->i_size && ext3_can_truncate(inode))
  ext3_orphan_add(handle, inode);
 EXT3_I(inode)->i_state |= EXT3_STATE_JDATA;
 if (inode->i_size > EXT3_I(inode)->i_disksize) {
  EXT3_I(inode)->i_disksize = inode->i_size;
  ret2 = ext3_mark_inode_dirty(handle, inode);
  if (!ret)
   ret = ret2;
 }

 ret2 = ext3_journal_stop(handle);
 if (!ret)
  ret = ret2;
 unlock_page(page);
 page_cache_release(page);

 if (pos + len > inode->i_size)
  ext3_truncate_failed_write(inode);
 return ret ? ret : copied;
}
