
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int block_write_end (struct file*,struct address_space*,int ,unsigned int,unsigned int,struct page*,void*) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int blkdev_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 int ret;
 ret = block_write_end(file, mapping, pos, len, copied, page, fsdata);

 unlock_page(page);
 page_cache_release(page);

 return ret;
}
