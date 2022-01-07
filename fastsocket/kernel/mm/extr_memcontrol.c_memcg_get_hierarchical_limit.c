
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cgroup* cgroup; } ;
struct mem_cgroup {int memsw; int res; int use_hierarchy; TYPE_1__ css; } ;
struct cgroup {struct cgroup* parent; } ;


 int RES_LIMIT ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;
 unsigned long long min (unsigned long long,unsigned long long) ;
 unsigned long long res_counter_read_u64 (int *,int ) ;

__attribute__((used)) static void memcg_get_hierarchical_limit(struct mem_cgroup *memcg,
  unsigned long long *mem_limit, unsigned long long *memsw_limit)
{
 struct cgroup *cgroup;
 unsigned long long min_limit, min_memsw_limit, tmp;

 min_limit = res_counter_read_u64(&memcg->res, RES_LIMIT);
 min_memsw_limit = res_counter_read_u64(&memcg->memsw, RES_LIMIT);
 cgroup = memcg->css.cgroup;
 if (!memcg->use_hierarchy)
  goto out;

 while (cgroup->parent) {
  cgroup = cgroup->parent;
  memcg = mem_cgroup_from_cont(cgroup);
  if (!memcg->use_hierarchy)
   break;
  tmp = res_counter_read_u64(&memcg->res, RES_LIMIT);
  min_limit = min(min_limit, tmp);
  tmp = res_counter_read_u64(&memcg->memsw, RES_LIMIT);
  min_memsw_limit = min(min_memsw_limit, tmp);
 }
out:
 *mem_limit = min_limit;
 *memsw_limit = min_memsw_limit;
 return;
}
