
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_size; } ;
struct file {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ PAGE_CACHE_SHIFT ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static int simple_commit_write(struct file *file, struct page *page,
          unsigned from, unsigned to)
{
 struct inode *inode = page->mapping->host;
 loff_t pos = ((loff_t)page->index << PAGE_CACHE_SHIFT) + to;

 if (!PageUptodate(page))
  SetPageUptodate(page);




 if (pos > inode->i_size)
  i_size_write(inode, pos);
 set_page_dirty(page);
 return 0;
}
