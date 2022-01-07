
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct cpuset {int mems_allowed; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 struct cpuset* cgroup_cs (struct cgroup*) ;
 int cpuset_attach_nodemask_from ;
 int cpuset_attach_nodemask_to ;
 int cpuset_migrate_mm (struct mm_struct*,int *,int *) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 scalar_t__ is_memory_migrate (struct cpuset*) ;
 int mmput (struct mm_struct*) ;
 int mpol_rebind_mm (struct mm_struct*,int *) ;

__attribute__((used)) static void cpuset_attach(struct cgroup_subsys *ss, struct cgroup *cont,
     struct cgroup *oldcont, struct task_struct *tsk)
{
 struct mm_struct *mm;
 struct cpuset *cs = cgroup_cs(cont);
 struct cpuset *oldcs = cgroup_cs(oldcont);





 cpuset_attach_nodemask_from = oldcs->mems_allowed;
 cpuset_attach_nodemask_to = cs->mems_allowed;
 mm = get_task_mm(tsk);
 if (mm) {
  mpol_rebind_mm(mm, &cpuset_attach_nodemask_to);
  if (is_memory_migrate(cs))
   cpuset_migrate_mm(mm, &cpuset_attach_nodemask_from,
       &cpuset_attach_nodemask_to);
  mmput(mm);
 }
}
