
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct page_cgroup {int dummy; } ;
struct page {int dummy; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;


 scalar_t__ PageCgroupAcctLRU (struct page_cgroup*) ;
 int PageCgroupUsed (struct page_cgroup*) ;
 scalar_t__ PageLRU (struct page*) ;
 int add_page_to_lru_list (struct zone*,struct page*,int) ;
 int del_page_from_lru_list (struct zone*,struct page*,int) ;
 struct page_cgroup* lookup_page_cgroup (struct page*) ;
 int page_lru (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mem_cgroup_lru_del_before_commit_swapcache(struct page *page)
{
 enum lru_list lru;
 unsigned long flags;
 struct zone *zone = page_zone(page);
 struct page_cgroup *pc = lookup_page_cgroup(page);

 spin_lock_irqsave(&zone->lru_lock, flags);
 lru = page_lru(page);
 if (PageLRU(page) && PageCgroupAcctLRU(pc) && !PageCgroupUsed(pc)) {
  del_page_from_lru_list(zone, page, lru);
  add_page_to_lru_list(zone, page, lru);
 }
 spin_unlock_irqrestore(&zone->lru_lock, flags);
}
