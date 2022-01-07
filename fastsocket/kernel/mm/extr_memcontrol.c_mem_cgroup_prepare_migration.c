
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_cgroup {struct mem_cgroup* mem_cgroup; } ;
struct page {int dummy; } ;
struct mem_cgroup {int css; } ;
typedef enum charge_type { ____Placeholder_charge_type } charge_type ;


 int ClearPageCgroupMigration (struct page_cgroup*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEM_CGROUP_CHARGE_TYPE_CACHE ;
 int MEM_CGROUP_CHARGE_TYPE_MAPPED ;
 int MEM_CGROUP_CHARGE_TYPE_SHMEM ;
 int PAGE_SIZE ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageCgroupUsed (struct page_cgroup*) ;
 int SetPageCgroupMigration (struct page_cgroup*) ;
 int __mem_cgroup_commit_charge (struct mem_cgroup*,struct page_cgroup*,int,int ) ;
 int __mem_cgroup_try_charge (int *,int ,struct mem_cgroup**,int,struct page*,int ) ;
 int css_get (int *) ;
 int css_put (int *) ;
 int lock_page_cgroup (struct page_cgroup*) ;
 struct page_cgroup* lookup_page_cgroup (struct page*) ;
 scalar_t__ mem_cgroup_disabled () ;
 int mem_cgroup_uncharge_page (struct page*) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 int unlock_page_cgroup (struct page_cgroup*) ;

int mem_cgroup_prepare_migration(struct page *page,
 struct page *newpage, struct mem_cgroup **ptr)
{
 struct page_cgroup *pc;
 struct mem_cgroup *mem = ((void*)0);
 enum charge_type ctype;
 int ret = 0;

 if (mem_cgroup_disabled())
  return 0;

 pc = lookup_page_cgroup(page);
 lock_page_cgroup(pc);
 if (PageCgroupUsed(pc)) {
  mem = pc->mem_cgroup;
  css_get(&mem->css);
  if (PageAnon(page))
   SetPageCgroupMigration(pc);
 }
 unlock_page_cgroup(pc);




 if (!mem)
  return 0;

 *ptr = mem;
 ret = __mem_cgroup_try_charge(((void*)0), GFP_KERNEL, ptr, 0,
       page, PAGE_SIZE);
 css_put(&mem->css);
 if (ret || *ptr == ((void*)0)) {
  if (PageAnon(page)) {
   lock_page_cgroup(pc);
   ClearPageCgroupMigration(pc);
   unlock_page_cgroup(pc);



   mem_cgroup_uncharge_page(page);
  }
  return -ENOMEM;
 }






 pc = lookup_page_cgroup(newpage);
 if (PageAnon(page))
  ctype = MEM_CGROUP_CHARGE_TYPE_MAPPED;
 else if (page_is_file_cache(page))
  ctype = MEM_CGROUP_CHARGE_TYPE_CACHE;
 else
  ctype = MEM_CGROUP_CHARGE_TYPE_SHMEM;
 __mem_cgroup_commit_charge(mem, pc, ctype, PAGE_SIZE);
 return ret;
}
