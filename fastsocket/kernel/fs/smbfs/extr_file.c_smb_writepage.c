
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {unsigned long index; struct address_space* mapping; } ;
struct inode {unsigned long i_size; } ;
struct address_space {struct inode* host; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int smb_writepage_sync (struct inode*,struct page*,int ,unsigned int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int
smb_writepage(struct page *page, struct writeback_control *wbc)
{
 struct address_space *mapping = page->mapping;
 struct inode *inode;
 unsigned long end_index;
 unsigned offset = PAGE_CACHE_SIZE;
 int err;

 BUG_ON(!mapping);
 inode = mapping->host;
 BUG_ON(!inode);

 end_index = inode->i_size >> PAGE_CACHE_SHIFT;


 if (page->index < end_index)
  goto do_it;

 offset = inode->i_size & (PAGE_CACHE_SIZE-1);

 if (page->index >= end_index+1 || !offset)
  return 0;
do_it:
 page_cache_get(page);
 err = smb_writepage_sync(inode, page, 0, offset);
 SetPageUptodate(page);
 unlock_page(page);
 page_cache_release(page);
 return err;
}
