
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_cgroup {int dummy; } ;
struct page {int dummy; } ;
struct mem_cgroup {int css; } ;


 int ClearPageCgroupMigration (struct page_cgroup*) ;
 int MEM_CGROUP_CHARGE_TYPE_FORCE ;
 scalar_t__ PageAnon (struct page*) ;
 int __mem_cgroup_uncharge_common (struct page*,int ) ;
 int cgroup_exclude_rmdir (int *) ;
 int cgroup_release_and_wakeup_rmdir (int *) ;
 int lock_page_cgroup (struct page_cgroup*) ;
 struct page_cgroup* lookup_page_cgroup (struct page*) ;
 int mem_cgroup_uncharge_page (struct page*) ;
 int unlock_page_cgroup (struct page_cgroup*) ;

void mem_cgroup_end_migration(struct mem_cgroup *mem,
 struct page *oldpage, struct page *newpage, bool migration_ok)
{
 struct page *used, *unused;
 struct page_cgroup *pc;

 if (!mem)
  return;

 cgroup_exclude_rmdir(&mem->css);
 if (!migration_ok) {
  used = oldpage;
  unused = newpage;
 } else {
  used = newpage;
  unused = oldpage;
 }





 pc = lookup_page_cgroup(oldpage);
 lock_page_cgroup(pc);
 ClearPageCgroupMigration(pc);
 unlock_page_cgroup(pc);

 if (unused != oldpage)
  pc = lookup_page_cgroup(unused);
 __mem_cgroup_uncharge_common(unused, MEM_CGROUP_CHARGE_TYPE_FORCE);

 pc = lookup_page_cgroup(used);
 if (PageAnon(used))
  mem_cgroup_uncharge_page(used);






 cgroup_release_and_wakeup_rmdir(&mem->css);
}
