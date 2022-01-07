
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys_state {int dummy; } ;
struct cpuset {int relax_domain_level; struct cgroup_subsys_state css; struct cpuset* parent; int fmeter; int mems_allowed; int cpus_allowed; scalar_t__ flags; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int parent; } ;
struct TYPE_2__ {struct cgroup_subsys_state css; } ;


 int CS_SCHED_LOAD_BALANCE ;
 int CS_SPREAD_PAGE ;
 int CS_SPREAD_SLAB ;
 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int alloc_cpumask_var (int *,int ) ;
 struct cpuset* cgroup_cs (int ) ;
 int cpumask_clear (int ) ;
 int fmeter_init (int *) ;
 scalar_t__ is_spread_page (struct cpuset*) ;
 scalar_t__ is_spread_slab (struct cpuset*) ;
 int kfree (struct cpuset*) ;
 struct cpuset* kmalloc (int,int ) ;
 int nodes_clear (int ) ;
 int number_of_cpusets ;
 int set_bit (int ,scalar_t__*) ;
 TYPE_1__ top_cpuset ;

__attribute__((used)) static struct cgroup_subsys_state *cpuset_create(
 struct cgroup_subsys *ss,
 struct cgroup *cont)
{
 struct cpuset *cs;
 struct cpuset *parent;

 if (!cont->parent) {
  return &top_cpuset.css;
 }
 parent = cgroup_cs(cont->parent);
 cs = kmalloc(sizeof(*cs), GFP_KERNEL);
 if (!cs)
  return ERR_PTR(-ENOMEM);
 if (!alloc_cpumask_var(&cs->cpus_allowed, GFP_KERNEL)) {
  kfree(cs);
  return ERR_PTR(-ENOMEM);
 }

 cs->flags = 0;
 if (is_spread_page(parent))
  set_bit(CS_SPREAD_PAGE, &cs->flags);
 if (is_spread_slab(parent))
  set_bit(CS_SPREAD_SLAB, &cs->flags);
 set_bit(CS_SCHED_LOAD_BALANCE, &cs->flags);
 cpumask_clear(cs->cpus_allowed);
 nodes_clear(cs->mems_allowed);
 fmeter_init(&cs->fmeter);
 cs->relax_domain_level = -1;

 cs->parent = parent;
 number_of_cpusets++;
 return &cs->css ;
}
