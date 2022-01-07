
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int DEFINE_WAIT_BIT (int ,int *,int) ;
 int TASK_UNINTERRUPTIBLE ;
 int __wait_on_bit (int ,int *,int ,int ) ;
 int page_waitqueue (struct page*) ;
 int sync_page ;
 scalar_t__ test_bit (int,int *) ;
 int wait ;

void wait_on_page_bit(struct page *page, int bit_nr)
{
 DEFINE_WAIT_BIT(wait, &page->flags, bit_nr);

 if (test_bit(bit_nr, &page->flags))
  __wait_on_bit(page_waitqueue(page), &wait, sync_page,
       TASK_UNINTERRUPTIBLE);
}
