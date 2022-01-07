
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct cpuset {int mems_allowed; } ;
struct cgroup_scanner {int cg; int * data; } ;
typedef int nodemask_t ;


 struct cpuset* cgroup_cs (int ) ;
 int cpuset_change_task_nodemask (struct task_struct*,int *) ;
 int cpuset_migrate_mm (struct mm_struct*,int const*,int *) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int guarantee_online_mems (struct cpuset*,int *) ;
 int is_memory_migrate (struct cpuset*) ;
 int mmput (struct mm_struct*) ;
 int mpol_rebind_mm (struct mm_struct*,int *) ;

__attribute__((used)) static void cpuset_change_nodemask(struct task_struct *p,
       struct cgroup_scanner *scan)
{
 struct mm_struct *mm;
 struct cpuset *cs;
 int migrate;
 const nodemask_t *oldmem = scan->data;
 nodemask_t newmems;

 cs = cgroup_cs(scan->cg);
 guarantee_online_mems(cs, &newmems);

 cpuset_change_task_nodemask(p, &newmems);

 mm = get_task_mm(p);
 if (!mm)
  return;

 migrate = is_memory_migrate(cs);

 mpol_rebind_mm(mm, &cs->mems_allowed);
 if (migrate)
  cpuset_migrate_mm(mm, oldmem, &cs->mems_allowed);
 mmput(mm);
}
