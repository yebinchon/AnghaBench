
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_3__* sighand; int * signal; } ;
struct TYPE_4__ {int entry; scalar_t__ firing; struct task_struct* task; } ;
struct TYPE_5__ {TYPE_1__ cpu; } ;
struct k_itimer {TYPE_2__ it; } ;
struct TYPE_6__ {int siglock; } ;


 int BUG_ON (int) ;
 int TIMER_RETRY ;
 scalar_t__ likely (int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int put_task_struct (struct task_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklist_lock ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int posix_cpu_timer_del(struct k_itimer *timer)
{
 struct task_struct *p = timer->it.cpu.task;
 int ret = 0;

 if (likely(p != ((void*)0))) {
  read_lock(&tasklist_lock);
  if (unlikely(p->signal == ((void*)0))) {




   BUG_ON(!list_empty(&timer->it.cpu.entry));
  } else {
   spin_lock(&p->sighand->siglock);
   if (timer->it.cpu.firing)
    ret = TIMER_RETRY;
   else
    list_del(&timer->it.cpu.entry);
   spin_unlock(&p->sighand->siglock);
  }
  read_unlock(&tasklist_lock);

  if (!ret)
   put_task_struct(p);
 }

 return ret;
}
