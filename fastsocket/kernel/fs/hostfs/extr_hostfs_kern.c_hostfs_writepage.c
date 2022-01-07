
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {int index; struct address_space* mapping; } ;
struct inode {unsigned long long i_size; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int fd; } ;


 int ClearPageError (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 TYPE_1__* HOSTFS_I (struct inode*) ;
 unsigned long long PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageError (struct page*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int unlock_page (struct page*) ;
 int write_file (int ,unsigned long long*,char*,int) ;

int hostfs_writepage(struct page *page, struct writeback_control *wbc)
{
 struct address_space *mapping = page->mapping;
 struct inode *inode = mapping->host;
 char *buffer;
 unsigned long long base;
 int count = PAGE_CACHE_SIZE;
 int end_index = inode->i_size >> PAGE_CACHE_SHIFT;
 int err;

 if (page->index >= end_index)
  count = inode->i_size & (PAGE_CACHE_SIZE-1);

 buffer = kmap(page);
 base = ((unsigned long long) page->index) << PAGE_CACHE_SHIFT;

 err = write_file(HOSTFS_I(inode)->fd, &base, buffer, count);
 if (err != count) {
  ClearPageUptodate(page);
  goto out;
 }

 if (base > inode->i_size)
  inode->i_size = base;

 if (PageError(page))
  ClearPageError(page);
 err = 0;

 out:
 kunmap(page);

 unlock_page(page);
 return err;
}
