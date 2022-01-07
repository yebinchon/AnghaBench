
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup_scanner {int cg; } ;


 int cgroup_cs (int ) ;
 int cpuset_update_task_spread_flag (int ,struct task_struct*) ;

__attribute__((used)) static void cpuset_change_flag(struct task_struct *tsk,
    struct cgroup_scanner *scan)
{
 cpuset_update_task_spread_flag(cgroup_cs(scan->cg), tsk);
}
