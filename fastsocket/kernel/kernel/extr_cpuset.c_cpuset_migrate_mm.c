
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mems_allowed; } ;
struct mm_struct {int dummy; } ;
typedef int nodemask_t ;


 int MPOL_MF_MOVE_ALL ;
 struct task_struct* current ;
 int do_migrate_pages (struct mm_struct*,int const*,int const*,int ) ;
 int guarantee_online_mems (int ,int *) ;
 int task_cs (struct task_struct*) ;

__attribute__((used)) static void cpuset_migrate_mm(struct mm_struct *mm, const nodemask_t *from,
       const nodemask_t *to)
{
 struct task_struct *tsk = current;

 tsk->mems_allowed = *to;

 do_migrate_pages(mm, from, to, MPOL_MF_MOVE_ALL);

 guarantee_online_mems(task_cs(tsk),&tsk->mems_allowed);
}
