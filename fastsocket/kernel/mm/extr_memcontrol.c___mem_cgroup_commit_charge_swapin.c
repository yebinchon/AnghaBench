
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page_cgroup {int dummy; } ;
struct page {int dummy; } ;
struct mem_cgroup {int css; int memsw; } ;
typedef enum charge_type { ____Placeholder_charge_type } charge_type ;


 int PAGE_SIZE ;
 scalar_t__ PageSwapCache (struct page*) ;
 int __mem_cgroup_commit_charge (struct mem_cgroup*,struct page_cgroup*,int,int ) ;
 int cgroup_exclude_rmdir (int *) ;
 int cgroup_release_and_wakeup_rmdir (int *) ;
 scalar_t__ do_swap_account ;
 struct page_cgroup* lookup_page_cgroup (struct page*) ;
 scalar_t__ mem_cgroup_disabled () ;
 int mem_cgroup_is_root (struct mem_cgroup*) ;
 struct mem_cgroup* mem_cgroup_lookup (unsigned short) ;
 int mem_cgroup_lru_add_after_commit_swapcache (struct page*) ;
 int mem_cgroup_lru_del_before_commit_swapcache (struct page*) ;
 int mem_cgroup_put (struct mem_cgroup*) ;
 int mem_cgroup_swap_statistics (struct mem_cgroup*,int) ;
 int page_private (struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int res_counter_uncharge (int *,int ) ;
 unsigned short swap_cgroup_record (TYPE_1__,int ) ;

__attribute__((used)) static void
__mem_cgroup_commit_charge_swapin(struct page *page, struct mem_cgroup *ptr,
     enum charge_type ctype)
{
 struct page_cgroup *pc;

 if (mem_cgroup_disabled())
  return;
 if (!ptr)
  return;
 cgroup_exclude_rmdir(&ptr->css);
 pc = lookup_page_cgroup(page);
 mem_cgroup_lru_del_before_commit_swapcache(page);
 __mem_cgroup_commit_charge(ptr, pc, ctype, PAGE_SIZE);
 mem_cgroup_lru_add_after_commit_swapcache(page);







 if (do_swap_account && PageSwapCache(page)) {
  swp_entry_t ent = {.val = page_private(page)};
  unsigned short id;
  struct mem_cgroup *memcg;

  id = swap_cgroup_record(ent, 0);
  rcu_read_lock();
  memcg = mem_cgroup_lookup(id);
  if (memcg) {




   if (!mem_cgroup_is_root(memcg))
    res_counter_uncharge(&memcg->memsw, PAGE_SIZE);
   mem_cgroup_swap_statistics(memcg, 0);
   mem_cgroup_put(memcg);
  }
  rcu_read_unlock();
 }





 cgroup_release_and_wakeup_rmdir(&ptr->css);
}
