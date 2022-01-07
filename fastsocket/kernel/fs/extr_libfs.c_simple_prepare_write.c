
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 unsigned int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int zero_user_segments (struct page*,int ,unsigned int,unsigned int,unsigned int) ;

int simple_prepare_write(struct file *file, struct page *page,
   unsigned from, unsigned to)
{
 if (!PageUptodate(page)) {
  if (to - from != PAGE_CACHE_SIZE)
   zero_user_segments(page,
    0, from,
    to, PAGE_CACHE_SIZE);
 }
 return 0;
}
