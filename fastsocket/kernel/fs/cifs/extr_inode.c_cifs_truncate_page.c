
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int ENOMEM ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 struct page* grab_cache_page (struct address_space*,int) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,int) ;

__attribute__((used)) static int cifs_truncate_page(struct address_space *mapping, loff_t from)
{
 pgoff_t index = from >> PAGE_CACHE_SHIFT;
 unsigned offset = from & (PAGE_CACHE_SIZE - 1);
 struct page *page;
 int rc = 0;

 page = grab_cache_page(mapping, index);
 if (!page)
  return -ENOMEM;

 zero_user_segment(page, offset, PAGE_CACHE_SIZE);
 unlock_page(page);
 page_cache_release(page);
 return rc;
}
