
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int __wake_up_bit (int ,int *,int) ;
 int page_waitqueue (struct page*) ;

__attribute__((used)) static inline void wake_up_page(struct page *page, int bit)
{
 __wake_up_bit(page_waitqueue(page), &page->flags, bit);
}
