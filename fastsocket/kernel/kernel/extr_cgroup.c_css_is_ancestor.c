
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_id {size_t depth; scalar_t__* stack; scalar_t__ id; } ;
struct cgroup_subsys_state {int id; } ;


 struct css_id* rcu_dereference (int ) ;

bool css_is_ancestor(struct cgroup_subsys_state *child,
      const struct cgroup_subsys_state *root)
{
 struct css_id *child_id = rcu_dereference(child->id);
 struct css_id *root_id = rcu_dereference(root->id);

 if (!child_id || !root_id || (child_id->depth < root_id->depth))
  return 0;
 return child_id->stack[root_id->depth] == root_id->id;
}
