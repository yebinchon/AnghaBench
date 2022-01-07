
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int use_hierarchy; } ;
struct cgroup {int children; struct cgroup* parent; } ;
struct cftype {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int cgroup_lock () ;
 int cgroup_unlock () ;
 scalar_t__ list_empty (int *) ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;

__attribute__((used)) static int mem_cgroup_hierarchy_write(struct cgroup *cont, struct cftype *cft,
     u64 val)
{
 int retval = 0;
 struct mem_cgroup *mem = mem_cgroup_from_cont(cont);
 struct cgroup *parent = cont->parent;
 struct mem_cgroup *parent_mem = ((void*)0);

 if (parent)
  parent_mem = mem_cgroup_from_cont(parent);

 cgroup_lock();
 if ((!parent_mem || !parent_mem->use_hierarchy) &&
    (val == 1 || val == 0)) {
  if (list_empty(&cont->children))
   mem->use_hierarchy = val;
  else
   retval = -EBUSY;
 } else
  retval = -EINVAL;
 cgroup_unlock();

 return retval;
}
