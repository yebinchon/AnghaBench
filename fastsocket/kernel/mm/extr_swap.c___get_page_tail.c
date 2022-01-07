
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageSlab (struct page*) ;
 int PageTail (struct page*) ;
 int __get_page_tail_foll (struct page*,int) ;
 unsigned long compound_lock_irqsave (struct page*) ;
 struct page* compound_trans_head (struct page*) ;
 int compound_unlock_irqrestore (struct page*,unsigned long) ;
 scalar_t__ get_page_unless_zero (struct page*) ;
 scalar_t__ likely (int) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool __get_page_tail(struct page *page)
{
 unsigned long flags;
 bool got = 0;
 struct page *page_head = compound_trans_head(page);

 if (likely(page != page_head && get_page_unless_zero(page_head))) {


  if (PageSlab(page_head)) {
   if (likely(PageTail(page))) {
    __get_page_tail_foll(page, 0);
    return 1;
   } else {
    put_page(page_head);
    return 0;
   }
  }







  flags = compound_lock_irqsave(page_head);

  if (likely(PageTail(page))) {
   __get_page_tail_foll(page, 0);
   got = 1;
  }
  compound_unlock_irqrestore(page_head, flags);
  if (unlikely(!got))
   put_page(page_head);
 }
 return got;
}
