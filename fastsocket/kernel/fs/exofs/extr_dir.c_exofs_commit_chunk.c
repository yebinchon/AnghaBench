
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct inode {unsigned int i_size; int i_version; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;


 scalar_t__ IS_DIRSYNC (struct inode*) ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int i_size_write (struct inode*,unsigned int) ;
 int mark_inode_dirty (struct inode*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;
 int write_one_page (struct page*,int) ;

__attribute__((used)) static int exofs_commit_chunk(struct page *page, loff_t pos, unsigned len)
{
 struct address_space *mapping = page->mapping;
 struct inode *dir = mapping->host;
 int err = 0;

 dir->i_version++;

 if (!PageUptodate(page))
  SetPageUptodate(page);

 if (pos+len > dir->i_size) {
  i_size_write(dir, pos+len);
  mark_inode_dirty(dir);
 }
 set_page_dirty(page);

 if (IS_DIRSYNC(dir))
  err = write_one_page(page, 1);
 else
  unlock_page(page);

 return err;
}
