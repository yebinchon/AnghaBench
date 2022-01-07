
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int loff_t ;


 int PAGE_CACHE_SHIFT ;
 int wait_on_page_writeback_range (struct address_space*,int,int) ;

int filemap_fdatawait_range(struct address_space *mapping, loff_t start,
       loff_t end)
{
 return wait_on_page_writeback_range(mapping, start >> PAGE_CACHE_SHIFT,
         end >> PAGE_CACHE_SHIFT);
}
