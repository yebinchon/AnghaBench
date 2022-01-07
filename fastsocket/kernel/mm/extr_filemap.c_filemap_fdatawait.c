
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int host; } ;
typedef int loff_t ;


 int PAGE_CACHE_SHIFT ;
 int i_size_read (int ) ;
 int wait_on_page_writeback_range (struct address_space*,int ,int) ;

int filemap_fdatawait(struct address_space *mapping)
{
 loff_t i_size = i_size_read(mapping->host);

 if (i_size == 0)
  return 0;

 return wait_on_page_writeback_range(mapping, 0,
    (i_size - 1) >> PAGE_CACHE_SHIFT);
}
