
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_zone {int mem_cgroup; int zone; } ;
struct lruvec {int * lists; } ;
struct list_head {int dummy; } ;
typedef int isolate_mode_t ;


 scalar_t__ LRU_ACTIVE ;
 int LRU_BASE ;
 scalar_t__ LRU_FILE ;
 unsigned long isolate_lru_pages (unsigned long,int *,struct list_head*,unsigned long*,int,int ,int) ;
 struct lruvec* mem_cgroup_zone_lruvec (int ,int ) ;

__attribute__((used)) static unsigned long isolate_pages(unsigned long nr, struct mem_cgroup_zone *mz,
       struct list_head *dst,
       unsigned long *scanned, int order,
       isolate_mode_t mode, int active, int file)
{
 struct lruvec *lruvec;
 int lru = LRU_BASE;

 lruvec = mem_cgroup_zone_lruvec(mz->zone, mz->mem_cgroup);
 if (active)
  lru += LRU_ACTIVE;
 if (file)
  lru += LRU_FILE;
 return isolate_lru_pages(nr, &lruvec->lists[lru], dst,
     scanned, order, mode, file);
}
