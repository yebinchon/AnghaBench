
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int ENOMEM ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int simple_prepare_write (struct file*,struct page*,unsigned int,unsigned int) ;

int simple_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 struct page *page;
 pgoff_t index;
 unsigned from;

 index = pos >> PAGE_CACHE_SHIFT;
 from = pos & (PAGE_CACHE_SIZE - 1);

 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page)
  return -ENOMEM;

 *pagep = page;

 return simple_prepare_write(file, page, from, from+len);
}
