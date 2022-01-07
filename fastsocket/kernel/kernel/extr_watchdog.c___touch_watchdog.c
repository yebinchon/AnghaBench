
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __get_cpu_var ;


 int get_timestamp (int) ;
 int smp_processor_id () ;

__attribute__((used)) static void __touch_watchdog(void)
{
 int this_cpu = smp_processor_id();

 __get_cpu_var(watchdog_touch_ts) = get_timestamp(this_cpu);
}
