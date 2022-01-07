
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_cgroup {struct mem_cgroup* mem_cgroup; } ;
struct page {int mapping; } ;
struct mem_cgroup {int dummy; } ;
typedef enum charge_type { ____Placeholder_charge_type } charge_type ;


 int ClearPageCgroupUsed (struct page_cgroup*) ;



 int PAGE_SIZE ;
 int PageAnon (struct page*) ;
 int PageCgroupMigration (struct page_cgroup*) ;
 int PageCgroupUsed (struct page_cgroup*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int VM_BUG_ON (int) ;
 int __do_uncharge (struct mem_cgroup*,int,int) ;
 int compound_order (struct page*) ;
 scalar_t__ do_swap_account ;
 int lock_page_cgroup (struct page_cgroup*) ;
 struct page_cgroup* lookup_page_cgroup (struct page*) ;
 int mem_cgroup_charge_statistics (struct mem_cgroup*,struct page_cgroup*,int) ;
 scalar_t__ mem_cgroup_disabled () ;
 int mem_cgroup_get (struct mem_cgroup*) ;
 int mem_cgroup_is_root (struct mem_cgroup*) ;
 scalar_t__ mem_cgroup_soft_limit_check (struct mem_cgroup*) ;
 int mem_cgroup_swap_statistics (struct mem_cgroup*,int) ;
 int mem_cgroup_update_tree (struct mem_cgroup*,struct page*) ;
 int page_is_file_cache (struct page*) ;
 int page_mapped (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page_cgroup (struct page_cgroup*) ;

__attribute__((used)) static struct mem_cgroup *
__mem_cgroup_uncharge_common(struct page *page, enum charge_type ctype)
{
 struct page_cgroup *pc;
 struct mem_cgroup *mem = ((void*)0);
 int page_size = PAGE_SIZE;

 if (mem_cgroup_disabled())
  return ((void*)0);

 if (PageSwapCache(page))
  return ((void*)0);

 if (PageTransHuge(page)) {
  page_size <<= compound_order(page);
  VM_BUG_ON(!PageTransHuge(page));
 }




 pc = lookup_page_cgroup(page);
 if (unlikely(!pc || !PageCgroupUsed(pc)))
  return ((void*)0);

 lock_page_cgroup(pc);

 mem = pc->mem_cgroup;

 if (!PageCgroupUsed(pc))
  goto unlock_out;

 switch (ctype) {
 case 129:
 case 130:

  if (page_mapped(page) || PageCgroupMigration(pc))
   goto unlock_out;
  break;
 case 128:
  if (!PageAnon(page)) {
   if (page->mapping && !page_is_file_cache(page))
    goto unlock_out;
  } else if (page_mapped(page))
    goto unlock_out;
  break;
 default:
  break;
 }

 mem_cgroup_charge_statistics(mem, pc, -page_size);

 ClearPageCgroupUsed(pc);






 unlock_page_cgroup(pc);




 if (mem_cgroup_soft_limit_check(mem))
  mem_cgroup_update_tree(mem, page);
 if (do_swap_account && ctype == 128) {
  mem_cgroup_swap_statistics(mem, 1);
  mem_cgroup_get(mem);
 }
 if (!mem_cgroup_is_root(mem))
  __do_uncharge(mem, ctype, page_size);

 return mem;

unlock_out:
 unlock_page_cgroup(pc);
 return ((void*)0);
}
