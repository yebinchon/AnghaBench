
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_id {unsigned short depth; } ;
struct cgroup_subsys_state {int id; } ;


 struct css_id* rcu_dereference (int ) ;

unsigned short css_depth(struct cgroup_subsys_state *css)
{
 struct css_id *cssid = rcu_dereference(css->id);

 if (cssid)
  return cssid->depth;
 return 0;
}
