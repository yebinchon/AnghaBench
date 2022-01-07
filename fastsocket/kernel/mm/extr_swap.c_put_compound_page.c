
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; int _mapcount; struct page* first_page; } ;


 scalar_t__ PageHead (struct page*) ;
 scalar_t__ PageSlab (struct page*) ;
 int PageTail (struct page*) ;
 int VM_BUG_ON (int) ;
 int __put_compound_page (struct page*) ;
 int __put_single_page (struct page*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 unsigned long compound_lock_irqsave (struct page*) ;
 struct page* compound_trans_head (struct page*) ;
 int compound_unlock_irqrestore (struct page*,unsigned long) ;
 scalar_t__ get_page_unless_zero (struct page*) ;
 scalar_t__ likely (int) ;
 scalar_t__ page_mapcount (struct page*) ;
 scalar_t__ put_page_testzero (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void put_compound_page(struct page *page)
{
 if (unlikely(PageTail(page))) {

  struct page *page_head = compound_trans_head(page);
  if (likely(page != page_head &&
      get_page_unless_zero(page_head))) {
   unsigned long flags;
   if (PageSlab(page_head)) {
    if (PageTail(page)) {
     if (put_page_testzero(page_head))
      VM_BUG_ON(1);

     atomic_dec(&page->_mapcount);
     goto skip_lock_tail;
    } else
     goto skip_lock;
   }






   flags = compound_lock_irqsave(page_head);
   if (unlikely(!PageTail(page))) {

    compound_unlock_irqrestore(page_head, flags);
skip_lock:
    if (put_page_testzero(page_head))
     __put_single_page(page_head);
out_put_single:
    if (put_page_testzero(page))
     __put_single_page(page);
    return;
   }
   VM_BUG_ON(page_head != page->first_page);






   if (put_page_testzero(page_head))
    VM_BUG_ON(1);

   VM_BUG_ON(page_mapcount(page) <= 0);
   atomic_dec(&page->_mapcount);
   VM_BUG_ON(atomic_read(&page_head->_count) <= 0);
   VM_BUG_ON(atomic_read(&page->_count) != 0);
   compound_unlock_irqrestore(page_head, flags);

skip_lock_tail:
   if (put_page_testzero(page_head)) {
    if (PageHead(page_head))
     __put_compound_page(page_head);
    else
     __put_single_page(page_head);
   }
  } else {

   VM_BUG_ON(PageTail(page));
   goto out_put_single;
  }
 } else if (put_page_testzero(page)) {
  if (PageHead(page))
   __put_compound_page(page);
  else
   __put_single_page(page);
 }
}
