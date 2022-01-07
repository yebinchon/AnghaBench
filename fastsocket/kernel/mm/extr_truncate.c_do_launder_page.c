
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* launder_page ) (struct page*) ;} ;


 int PageDirty (struct page*) ;
 int stub1 (struct page*) ;

__attribute__((used)) static int do_launder_page(struct address_space *mapping, struct page *page)
{
 if (!PageDirty(page))
  return 0;
 if (page->mapping != mapping || mapping->a_ops->launder_page == ((void*)0))
  return 0;
 return mapping->a_ops->launder_page(page);
}
