
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; TYPE_2__* mm; } ;
struct mem_cgroup {int dummy; } ;
typedef int nodemask_t ;
struct TYPE_5__ {long nr_ptes; int oom_disable_count; } ;
struct TYPE_4__ {scalar_t__ oom_score_adj; } ;


 int CAP_SYS_ADMIN ;
 scalar_t__ atomic_read (int *) ;
 struct task_struct* find_lock_task_mm (struct task_struct*) ;
 scalar_t__ get_mm_counter (TYPE_2__*,int ) ;
 long get_mm_rss (TYPE_2__*) ;
 scalar_t__ has_capability_noaudit (struct task_struct*,int ) ;
 scalar_t__ oom_unkillable_task (struct task_struct*,struct mem_cgroup*,int const*) ;
 int swap_usage ;
 int task_unlock (struct task_struct*) ;

unsigned int oom_badness(struct task_struct *p, struct mem_cgroup *mem,
        const nodemask_t *nodemask, unsigned long totalpages)
{
 long points;

 if (oom_unkillable_task(p, mem, nodemask))
  return 0;

 p = find_lock_task_mm(p);
 if (!p)
  return 0;






 if (atomic_read(&p->mm->oom_disable_count)) {
  task_unlock(p);
  return 0;
 }





 if (!totalpages)
  totalpages = 1;





 points = get_mm_rss(p->mm) + p->mm->nr_ptes;
 points += get_mm_counter(p->mm, swap_usage);

 points *= 1000;
 points /= totalpages;
 task_unlock(p);





 if (has_capability_noaudit(p, CAP_SYS_ADMIN))
  points -= 30;






 points += p->signal->oom_score_adj;






 if (points <= 0)
  return 1;
 return (points < 1000) ? points : 1000;
}
