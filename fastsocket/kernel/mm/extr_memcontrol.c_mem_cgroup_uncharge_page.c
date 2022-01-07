
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;


 int MEM_CGROUP_CHARGE_TYPE_MAPPED ;
 int PageAnon (struct page*) ;
 int __mem_cgroup_uncharge_common (struct page*,int ) ;
 scalar_t__ page_mapped (struct page*) ;

void mem_cgroup_uncharge_page(struct page *page)
{

 if (page_mapped(page))
  return;
 if (page->mapping && !PageAnon(page))
  return;
 __mem_cgroup_uncharge_common(page, MEM_CGROUP_CHARGE_TYPE_MAPPED);
}
