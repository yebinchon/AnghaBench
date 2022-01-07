
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union cpu_time_count {int dummy; } cpu_time_count ;
struct TYPE_3__ {int expires; int * task; } ;
struct TYPE_4__ {TYPE_1__ cpu; } ;
struct k_itimer {TYPE_2__ it; int it_clock; } ;


 int cpu_time_sub (int ,int ,union cpu_time_count) ;
 int put_task_struct (int *) ;

__attribute__((used)) static void clear_dead_task(struct k_itimer *timer, union cpu_time_count now)
{




 put_task_struct(timer->it.cpu.task);
 timer->it.cpu.task = ((void*)0);
 timer->it.cpu.expires = cpu_time_sub(timer->it_clock,
          timer->it.cpu.expires,
          now);
}
