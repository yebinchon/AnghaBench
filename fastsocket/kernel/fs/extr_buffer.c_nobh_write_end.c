
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int SetPageUptodate (struct page*) ;
 int attach_nobh_buffers (struct page*,struct buffer_head*) ;
 int free_buffer_head (struct buffer_head*) ;
 int generic_write_end (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ;
 int i_size_write (struct inode*,unsigned int) ;
 int mark_inode_dirty (struct inode*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

int nobh_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = page->mapping->host;
 struct buffer_head *head = fsdata;
 struct buffer_head *bh;
 BUG_ON(fsdata != ((void*)0) && page_has_buffers(page));

 if (unlikely(copied < len) && head)
  attach_nobh_buffers(page, head);
 if (page_has_buffers(page))
  return generic_write_end(file, mapping, pos, len,
     copied, page, fsdata);

 SetPageUptodate(page);
 set_page_dirty(page);
 if (pos+copied > inode->i_size) {
  i_size_write(inode, pos+copied);
  mark_inode_dirty(inode);
 }

 unlock_page(page);
 page_cache_release(page);

 while (head) {
  bh = head;
  head = head->b_this_page;
  free_buffer_head(bh);
 }

 return copied;
}
