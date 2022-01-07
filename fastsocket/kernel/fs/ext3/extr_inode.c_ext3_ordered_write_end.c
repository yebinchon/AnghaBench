
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {unsigned int i_size; } ;
struct file {TYPE_1__* f_mapping; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {struct inode* host; } ;


 int PAGE_CACHE_SIZE ;
 unsigned int block_write_end (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ;
 scalar_t__ ext3_can_truncate (struct inode*) ;
 int * ext3_journal_current_handle () ;
 int ext3_journal_stop (int *) ;
 int ext3_orphan_add (int *,struct inode*) ;
 int ext3_truncate_failed_write (struct inode*) ;
 int journal_dirty_data_fn ;
 int page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int trace_ext3_ordered_write_end (struct inode*,int,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;
 int update_file_sizes (struct inode*,int,unsigned int) ;
 int walk_page_buffers (int *,int ,unsigned int,unsigned int,int *,int ) ;

__attribute__((used)) static int ext3_ordered_write_end(struct file *file,
    struct address_space *mapping,
    loff_t pos, unsigned len, unsigned copied,
    struct page *page, void *fsdata)
{
 handle_t *handle = ext3_journal_current_handle();
 struct inode *inode = file->f_mapping->host;
 unsigned from, to;
 int ret = 0, ret2;

 trace_ext3_ordered_write_end(inode, pos, len, copied);
 copied = block_write_end(file, mapping, pos, len, copied, page, fsdata);

 from = pos & (PAGE_CACHE_SIZE - 1);
 to = from + copied;
 ret = walk_page_buffers(handle, page_buffers(page),
  from, to, ((void*)0), journal_dirty_data_fn);

 if (ret == 0)
  update_file_sizes(inode, pos, copied);




 if (pos + len > inode->i_size && ext3_can_truncate(inode))
  ext3_orphan_add(handle, inode);
 ret2 = ext3_journal_stop(handle);
 if (!ret)
  ret = ret2;
 unlock_page(page);
 page_cache_release(page);

 if (pos + len > inode->i_size)
  ext3_truncate_failed_write(inode);
 return ret ? ret : copied;
}
