
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;


 int MEM_CGROUP_CHARGE_TYPE_CACHE ;
 int VM_BUG_ON (int ) ;
 int __mem_cgroup_uncharge_common (struct page*,int ) ;
 int page_mapped (struct page*) ;

void mem_cgroup_uncharge_cache_page(struct page *page)
{
 VM_BUG_ON(page_mapped(page));
 VM_BUG_ON(page->mapping);
 __mem_cgroup_uncharge_common(page, MEM_CGROUP_CHARGE_TYPE_CACHE);
}
