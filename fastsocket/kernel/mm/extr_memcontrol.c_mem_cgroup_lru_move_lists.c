
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct page {int dummy; } ;
struct lruvec {int dummy; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;


 struct lruvec* mem_cgroup_lru_add_list (struct zone*,struct page*,int) ;
 int mem_cgroup_lru_del_list (struct page*,int) ;

struct lruvec *mem_cgroup_lru_move_lists(struct zone *zone,
      struct page *page,
      enum lru_list from,
      enum lru_list to)
{

 mem_cgroup_lru_del_list(page, from);
 return mem_cgroup_lru_add_list(zone, page, to);
}
