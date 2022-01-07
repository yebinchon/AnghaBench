
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_itimer {int it_clock; } ;


 int PROCESS_CLOCK ;
 int posix_cpu_timer_create (struct k_itimer*) ;

__attribute__((used)) static int process_cpu_timer_create(struct k_itimer *timer)
{
 timer->it_clock = PROCESS_CLOCK;
 return posix_cpu_timer_create(timer);
}
