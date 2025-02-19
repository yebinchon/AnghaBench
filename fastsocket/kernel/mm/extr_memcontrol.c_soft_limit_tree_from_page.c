
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct mem_cgroup_tree_per_zone {int dummy; } ;
struct TYPE_4__ {TYPE_1__** rb_tree_per_node; } ;
struct TYPE_3__ {struct mem_cgroup_tree_per_zone* rb_tree_per_zone; } ;


 int page_to_nid (struct page*) ;
 int page_zonenum (struct page*) ;
 TYPE_2__ soft_limit_tree ;

__attribute__((used)) static struct mem_cgroup_tree_per_zone *
soft_limit_tree_from_page(struct page *page)
{
 int nid = page_to_nid(page);
 int zid = page_zonenum(page);

 return &soft_limit_tree.rb_tree_per_node[nid]->rb_tree_per_zone[zid];
}
