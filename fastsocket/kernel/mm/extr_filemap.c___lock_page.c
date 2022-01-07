
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int DEFINE_WAIT_BIT (int ,int *,int ) ;
 int PG_locked ;
 int TASK_UNINTERRUPTIBLE ;
 int __wait_on_bit_lock (int ,int *,int ,int ) ;
 int page_waitqueue (struct page*) ;
 int sync_page ;
 int wait ;

void __lock_page(struct page *page)
{
 DEFINE_WAIT_BIT(wait, &page->flags, PG_locked);

 __wait_on_bit_lock(page_waitqueue(page), &wait, sync_page,
       TASK_UNINTERRUPTIBLE);
}
