
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int VERBOSE_PRINTK_STRING (char*) ;
 int kthread_should_stop () ;
 int rcu_torture_shuffle_tasks () ;
 int rcutorture_shutdown_absorb (char*) ;
 int schedule_timeout_interruptible (int) ;
 int shuffle_interval ;

__attribute__((used)) static int
rcu_torture_shuffle(void *arg)
{
 VERBOSE_PRINTK_STRING("rcu_torture_shuffle task started");
 do {
  schedule_timeout_interruptible(shuffle_interval * HZ);
  rcu_torture_shuffle_tasks();
  rcutorture_shutdown_absorb("rcu_torture_shuffle");
 } while (!kthread_should_stop());
 VERBOSE_PRINTK_STRING("rcu_torture_shuffle task stopping");
 return 0;
}
