
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptr_heap {int dummy; } ;
struct TYPE_2__ {int cgroup; } ;
struct cpuset {TYPE_1__ css; } ;
struct cgroup_scanner {int * data; struct ptr_heap* heap; int process_task; int * test_task; int cg; } ;
typedef int nodemask_t ;


 int cgroup_scan_tasks (struct cgroup_scanner*) ;
 struct cpuset* cpuset_being_rebound ;
 int cpuset_change_nodemask ;

__attribute__((used)) static void update_tasks_nodemask(struct cpuset *cs, const nodemask_t *oldmem,
     struct ptr_heap *heap)
{
 struct cgroup_scanner scan;

 cpuset_being_rebound = cs;

 scan.cg = cs->css.cgroup;
 scan.test_task = ((void*)0);
 scan.process_task = cpuset_change_nodemask;
 scan.heap = heap;
 scan.data = (nodemask_t *)oldmem;
 cgroup_scan_tasks(&scan);


 cpuset_being_rebound = ((void*)0);
}
