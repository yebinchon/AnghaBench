
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageBuddy (struct page*) ;
 int VM_BUG_ON (int) ;
 unsigned long page_private (struct page*) ;

__attribute__((used)) static inline unsigned long page_order(struct page *page)
{
 VM_BUG_ON(!PageBuddy(page));
 return page_private(page);
}
