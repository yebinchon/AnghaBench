
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct cgroup_scanner {int cg; } ;
struct TYPE_2__ {int cpus_allowed; } ;


 TYPE_1__* cgroup_cs (int ) ;
 int set_cpus_allowed_ptr (struct task_struct*,int ) ;

__attribute__((used)) static void cpuset_change_cpumask(struct task_struct *tsk,
      struct cgroup_scanner *scan)
{
 set_cpus_allowed_ptr(tsk, ((cgroup_cs(scan->cg))->cpus_allowed));
}
