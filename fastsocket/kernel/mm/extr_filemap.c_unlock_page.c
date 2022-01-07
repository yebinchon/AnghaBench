
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int PG_locked ;
 int PageLocked (struct page*) ;
 int VM_BUG_ON (int) ;
 int clear_bit_unlock (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int wake_up_page (struct page*,int ) ;

void unlock_page(struct page *page)
{
 VM_BUG_ON(!PageLocked(page));
 clear_bit_unlock(PG_locked, &page->flags);
 smp_mb__after_clear_bit();
 wake_up_page(page, PG_locked);
}
