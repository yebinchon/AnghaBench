
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct mem_cgroup {int css; int use_hierarchy; } const mem_cgroup ;


 int css_is_ancestor (int *,int *) ;

bool __mem_cgroup_same_or_subtree(const struct mem_cgroup *root_memcg,
      struct mem_cgroup *memcg)
{
 if (root_memcg == memcg)
  return 1;
 if (!root_memcg->use_hierarchy || !memcg)
  return 0;
 return css_is_ancestor(&memcg->css, &root_memcg->css);
}
