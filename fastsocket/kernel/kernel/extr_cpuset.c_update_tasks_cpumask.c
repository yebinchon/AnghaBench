
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptr_heap {int dummy; } ;
struct TYPE_2__ {int cgroup; } ;
struct cpuset {TYPE_1__ css; } ;
struct cgroup_scanner {struct ptr_heap* heap; int process_task; int test_task; int cg; } ;


 int cgroup_scan_tasks (struct cgroup_scanner*) ;
 int cpuset_change_cpumask ;
 int cpuset_test_cpumask ;

__attribute__((used)) static void update_tasks_cpumask(struct cpuset *cs, struct ptr_heap *heap)
{
 struct cgroup_scanner scan;

 scan.cg = cs->css.cgroup;
 scan.test_task = cpuset_test_cpumask;
 scan.process_task = cpuset_change_cpumask;
 scan.heap = heap;
 cgroup_scan_tasks(&scan);
}
