
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sched; } ;
struct TYPE_7__ {scalar_t__ sched; } ;
struct TYPE_6__ {TYPE_1__ expires; TYPE_3__ incr; } ;
struct TYPE_8__ {TYPE_2__ cpu; } ;
struct k_itimer {int it_requeue_pending; TYPE_4__ it; int it_process; int * sigq; } ;


 int posix_cpu_timer_schedule (struct k_itimer*) ;
 scalar_t__ posix_timer_event (struct k_itimer*,int ) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void cpu_timer_fire(struct k_itimer *timer)
{
 if (unlikely(timer->sigq == ((void*)0))) {




  wake_up_process(timer->it_process);
  timer->it.cpu.expires.sched = 0;
 } else if (timer->it.cpu.incr.sched == 0) {



  posix_timer_event(timer, 0);
  timer->it.cpu.expires.sched = 0;
 } else if (posix_timer_event(timer, ++timer->it_requeue_pending)) {






  posix_cpu_timer_schedule(timer);
 }
}
