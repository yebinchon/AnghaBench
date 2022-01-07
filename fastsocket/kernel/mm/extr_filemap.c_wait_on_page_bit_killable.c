
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int DEFINE_WAIT_BIT (int ,int *,int) ;
 int TASK_KILLABLE ;
 int __wait_on_bit (int ,int *,int ,int ) ;
 int page_waitqueue (struct page*) ;
 int sync_page_killable ;
 int test_bit (int,int *) ;
 int wait ;

int wait_on_page_bit_killable(struct page *page, int bit_nr)
{
 DEFINE_WAIT_BIT(wait, &page->flags, bit_nr);

 if (!test_bit(bit_nr, &page->flags))
  return 0;

 return __wait_on_bit(page_waitqueue(page), &wait,
        sync_page_killable, TASK_KILLABLE);
}
