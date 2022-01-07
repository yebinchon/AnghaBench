
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int page_poison (struct page*) ;

__attribute__((used)) static void unpoison_highpage(struct page *page)
{




 BUG_ON(page_poison(page));
}
