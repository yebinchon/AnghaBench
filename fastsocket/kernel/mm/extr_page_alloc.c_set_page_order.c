
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __SetPageBuddy (struct page*) ;
 int set_page_private (struct page*,int) ;

__attribute__((used)) static inline void set_page_order(struct page *page, int order)
{
 set_page_private(page, order);
 __SetPageBuddy(page);
}
