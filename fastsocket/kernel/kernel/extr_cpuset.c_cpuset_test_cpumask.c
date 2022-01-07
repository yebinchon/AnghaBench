
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int cpus_allowed; } ;
struct cgroup_scanner {int cg; } ;
struct TYPE_2__ {int cpus_allowed; } ;


 TYPE_1__* cgroup_cs (int ) ;
 int cpumask_equal (int *,int ) ;

__attribute__((used)) static int cpuset_test_cpumask(struct task_struct *tsk,
          struct cgroup_scanner *scan)
{
 return !cpumask_equal(&tsk->cpus_allowed,
   (cgroup_cs(scan->cg))->cpus_allowed);
}
