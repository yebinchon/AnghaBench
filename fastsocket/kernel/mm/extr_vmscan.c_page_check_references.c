
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scan_control {int target_mem_cgroup; } ;
struct page {int dummy; } ;
struct mem_cgroup_zone {int dummy; } ;
typedef enum page_references { ____Placeholder_page_references } page_references ;


 int PAGEREF_ACTIVATE ;
 int PAGEREF_KEEP ;
 int PAGEREF_RECLAIM ;
 int PAGEREF_RECLAIM_CLEAN ;
 scalar_t__ PageAnon (struct page*) ;
 int SetPageReferenced (struct page*) ;
 int TestClearPageReferenced (struct page*) ;
 unsigned long VM_LOCKED ;
 int page_referenced (struct page*,int,int ,unsigned long*) ;

__attribute__((used)) static enum page_references page_check_references(struct page *page,
        struct mem_cgroup_zone *mz,
        struct scan_control *sc)
{
 int referenced_ptes, referenced_page;
 unsigned long vm_flags;

 referenced_ptes = page_referenced(page, 1, sc->target_mem_cgroup,
       &vm_flags);
 referenced_page = TestClearPageReferenced(page);





 if (vm_flags & VM_LOCKED)
  return PAGEREF_RECLAIM;

 if (referenced_ptes) {
  if (PageAnon(page))
   return PAGEREF_ACTIVATE;
  SetPageReferenced(page);

  if (referenced_page)
   return PAGEREF_ACTIVATE;

  return PAGEREF_KEEP;
 }


 if (referenced_page)
  return PAGEREF_RECLAIM_CLEAN;

 return PAGEREF_RECLAIM;
}
