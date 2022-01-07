
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int account_process_tick (struct task_struct*,int) ;
 struct task_struct* current ;
 scalar_t__ in_irq () ;
 int irq_work_run () ;
 int printk_tick () ;
 int rcu_check_callbacks (int,int) ;
 int run_local_timers () ;
 int run_posix_cpu_timers (struct task_struct*) ;
 int scheduler_tick () ;
 int smp_processor_id () ;

void update_process_times(int user_tick)
{
 struct task_struct *p = current;
 int cpu = smp_processor_id();


 account_process_tick(p, user_tick);
 run_local_timers();
 rcu_check_callbacks(cpu, user_tick);
 printk_tick();




 scheduler_tick();
 run_posix_cpu_timers(p);
}
