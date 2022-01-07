
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int VERBOSE_PRINTK_STRING (char*) ;
 int kthread_should_stop () ;
 int rcu_torture_stats_print () ;
 int rcutorture_shutdown_absorb (char*) ;
 int schedule_timeout_interruptible (int) ;
 int stat_interval ;

__attribute__((used)) static int
rcu_torture_stats(void *arg)
{
 VERBOSE_PRINTK_STRING("rcu_torture_stats task started");
 do {
  schedule_timeout_interruptible(stat_interval * HZ);
  rcu_torture_stats_print();
  rcutorture_shutdown_absorb("rcu_torture_stats");
 } while (!kthread_should_stop());
 VERBOSE_PRINTK_STRING("rcu_torture_stats task stopping");
 return 0;
}
