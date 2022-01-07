
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup_tree_per_zone {int lock; } ;
struct mem_cgroup_per_zone {scalar_t__ on_tree; } ;
struct mem_cgroup {int res; } ;


 int __mem_cgroup_insert_exceeded (struct mem_cgroup*,struct mem_cgroup_per_zone*,struct mem_cgroup_tree_per_zone*,unsigned long long) ;
 int __mem_cgroup_remove_exceeded (struct mem_cgroup*,struct mem_cgroup_per_zone*,struct mem_cgroup_tree_per_zone*) ;
 struct mem_cgroup_per_zone* mem_cgroup_zoneinfo (struct mem_cgroup*,int,int) ;
 int page_to_nid (struct page*) ;
 int page_zonenum (struct page*) ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 unsigned long long res_counter_soft_limit_excess (int *) ;
 struct mem_cgroup_tree_per_zone* soft_limit_tree_from_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mem_cgroup_update_tree(struct mem_cgroup *mem, struct page *page)
{
 unsigned long long excess;
 struct mem_cgroup_per_zone *mz;
 struct mem_cgroup_tree_per_zone *mctz;
 int nid = page_to_nid(page);
 int zid = page_zonenum(page);
 mctz = soft_limit_tree_from_page(page);





 for (; mem; mem = parent_mem_cgroup(mem)) {
  mz = mem_cgroup_zoneinfo(mem, nid, zid);
  excess = res_counter_soft_limit_excess(&mem->res);




  if (excess || mz->on_tree) {
   spin_lock(&mctz->lock);

   if (mz->on_tree)
    __mem_cgroup_remove_exceeded(mem, mz, mctz);




   __mem_cgroup_insert_exceeded(mem, mz, mctz, excess);
   spin_unlock(&mctz->lock);
  }
 }
}
