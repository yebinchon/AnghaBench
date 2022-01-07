
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_tree_per_zone {int rb_root; } ;
struct mem_cgroup_per_zone {int on_tree; int tree_node; } ;
struct mem_cgroup {int dummy; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static void
__mem_cgroup_remove_exceeded(struct mem_cgroup *mem,
    struct mem_cgroup_per_zone *mz,
    struct mem_cgroup_tree_per_zone *mctz)
{
 if (!mz->on_tree)
  return;
 rb_erase(&mz->tree_node, &mctz->rb_root);
 mz->on_tree = 0;
}
