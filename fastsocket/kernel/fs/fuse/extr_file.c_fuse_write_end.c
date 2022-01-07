
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;


 int fuse_buffered_write (struct file*,struct inode*,int ,unsigned int,struct page*) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int fuse_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;
 int res = 0;

 if (copied)
  res = fuse_buffered_write(file, inode, pos, copied, page);

 unlock_page(page);
 page_cache_release(page);
 return res;
}
