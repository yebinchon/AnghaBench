
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {struct task_struct* group_leader; } ;
struct TYPE_6__ {scalar_t__ sched; } ;
struct TYPE_5__ {scalar_t__ sched; } ;
struct TYPE_7__ {struct task_struct* task; TYPE_2__ expires; TYPE_1__ incr; int entry; } ;
struct TYPE_8__ {TYPE_3__ cpu; } ;
struct k_itimer {TYPE_4__ it; int it_clock; } ;
typedef scalar_t__ pid_t ;


 scalar_t__ CPUCLOCK_MAX ;
 scalar_t__ CPUCLOCK_PERTHREAD (int ) ;
 scalar_t__ CPUCLOCK_PID (int ) ;
 scalar_t__ CPUCLOCK_WHICH (int ) ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 struct task_struct* current ;
 struct task_struct* find_task_by_vpid (scalar_t__ const) ;
 int get_task_struct (struct task_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int same_thread_group (struct task_struct*,struct task_struct*) ;
 int tasklist_lock ;
 int thread_group_leader (struct task_struct*) ;

__attribute__((used)) static int posix_cpu_timer_create(struct k_itimer *new_timer)
{
 int ret = 0;
 const pid_t pid = CPUCLOCK_PID(new_timer->it_clock);
 struct task_struct *p;

 if (CPUCLOCK_WHICH(new_timer->it_clock) >= CPUCLOCK_MAX)
  return -EINVAL;

 INIT_LIST_HEAD(&new_timer->it.cpu.entry);
 new_timer->it.cpu.incr.sched = 0;
 new_timer->it.cpu.expires.sched = 0;

 read_lock(&tasklist_lock);
 if (CPUCLOCK_PERTHREAD(new_timer->it_clock)) {
  if (pid == 0) {
   p = current;
  } else {
   p = find_task_by_vpid(pid);
   if (p && !same_thread_group(p, current))
    p = ((void*)0);
  }
 } else {
  if (pid == 0) {
   p = current->group_leader;
  } else {
   p = find_task_by_vpid(pid);
   if (p && !thread_group_leader(p))
    p = ((void*)0);
  }
 }
 new_timer->it.cpu.task = p;
 if (p) {
  get_task_struct(p);
 } else {
  ret = -EINVAL;
 }
 read_unlock(&tasklist_lock);

 return ret;
}
