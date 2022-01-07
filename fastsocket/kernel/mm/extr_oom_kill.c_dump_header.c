
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;
struct TYPE_7__ {TYPE_1__* signal; int comm; } ;
struct TYPE_6__ {int oom_score_adj; int oom_adj; } ;


 int SHOW_MEM_FILTER_NODES ;
 int cpuset_print_task_mems_allowed (TYPE_2__*) ;
 TYPE_2__* current ;
 int dump_stack () ;
 int dump_tasks (struct mem_cgroup*,int const*) ;
 int mem_cgroup_print_oom_info (struct mem_cgroup*,struct task_struct*) ;
 int pr_warning (char*,int ,int ,int,int ,int ) ;
 int show_mem (int ) ;
 scalar_t__ sysctl_oom_dump_tasks ;
 int task_lock (TYPE_2__*) ;
 int task_unlock (TYPE_2__*) ;

__attribute__((used)) static void dump_header(struct task_struct *p, gfp_t gfp_mask, int order,
   struct mem_cgroup *mem, const nodemask_t *nodemask)
{
 task_lock(current);
 pr_warning("%s invoked oom-killer: gfp_mask=0x%x, order=%d, "
  "oom_adj=%d, oom_score_adj=%d\n",
  current->comm, gfp_mask, order, current->signal->oom_adj,
  current->signal->oom_score_adj);
 cpuset_print_task_mems_allowed(current);
 task_unlock(current);
 dump_stack();
 mem_cgroup_print_oom_info(mem, p);
 show_mem(SHOW_MEM_FILTER_NODES);
 if (sysctl_oom_dump_tasks)
  dump_tasks(mem, nodemask);
}
