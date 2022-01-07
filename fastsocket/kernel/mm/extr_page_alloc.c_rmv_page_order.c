
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __ClearPageBuddy (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static inline void rmv_page_order(struct page *page)
{
 __ClearPageBuddy(page);
 set_page_private(page, 0);
}
