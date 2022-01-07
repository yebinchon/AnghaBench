
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_pages_ok (struct page*,int ) ;
 int compound_order (struct page*) ;

__attribute__((used)) static void free_compound_page(struct page *page)
{
 __free_pages_ok(page, compound_order(page));
}
