
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_tree_per_zone {int lock; } ;
struct mem_cgroup_per_zone {int dummy; } ;


 struct mem_cgroup_per_zone* __mem_cgroup_largest_soft_limit_node (struct mem_cgroup_tree_per_zone*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct mem_cgroup_per_zone *
mem_cgroup_largest_soft_limit_node(struct mem_cgroup_tree_per_zone *mctz)
{
 struct mem_cgroup_per_zone *mz;

 spin_lock(&mctz->lock);
 mz = __mem_cgroup_largest_soft_limit_node(mctz);
 spin_unlock(&mctz->lock);
 return mz;
}
