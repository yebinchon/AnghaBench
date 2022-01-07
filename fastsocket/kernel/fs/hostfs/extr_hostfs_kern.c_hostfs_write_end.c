
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
struct TYPE_2__ {int fd; } ;


 TYPE_1__* FILE_HOSTFS_I (struct file*) ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;
 int write_file (int ,int*,void*,unsigned int) ;

int hostfs_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;
 void *buffer;
 unsigned from = pos & (PAGE_CACHE_SIZE - 1);
 int err;

 buffer = kmap(page);
 err = write_file(FILE_HOSTFS_I(file)->fd, &pos, buffer + from, copied);
 kunmap(page);

 if (!PageUptodate(page) && err == PAGE_CACHE_SIZE)
  SetPageUptodate(page);





 if (err > 0 && (pos > inode->i_size))
  inode->i_size = pos;
 unlock_page(page);
 page_cache_release(page);

 return err;
}
