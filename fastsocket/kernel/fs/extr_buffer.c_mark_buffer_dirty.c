
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct page* b_page; } ;
struct address_space {int dummy; } ;


 int TestSetPageDirty (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __set_page_dirty (struct page*,struct address_space*,int ) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 struct address_space* page_mapping (struct page*) ;
 int smp_mb () ;
 int test_set_buffer_dirty (struct buffer_head*) ;

void mark_buffer_dirty(struct buffer_head *bh)
{
 WARN_ON_ONCE(!buffer_uptodate(bh));







 if (buffer_dirty(bh)) {
  smp_mb();
  if (buffer_dirty(bh))
   return;
 }

 if (!test_set_buffer_dirty(bh)) {
  struct page *page = bh->b_page;
  if (!TestSetPageDirty(page)) {
   struct address_space *mapping = page_mapping(page);
   if (mapping)
    __set_page_dirty(page, mapping, 0);
  }
 }
}
