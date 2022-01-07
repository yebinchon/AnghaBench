
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int VERBOSE_PRINTK_STRING (char*) ;
 int kthread_should_stop () ;
 int rcutorture_shutdown_absorb (char*) ;
 int schedule_timeout_interruptible (int) ;
 int stutter ;
 int stutter_pause_test ;

__attribute__((used)) static int
rcu_torture_stutter(void *arg)
{
 VERBOSE_PRINTK_STRING("rcu_torture_stutter task started");
 do {
  schedule_timeout_interruptible(stutter * HZ);
  stutter_pause_test = 1;
  if (!kthread_should_stop())
   schedule_timeout_interruptible(stutter * HZ);
  stutter_pause_test = 0;
  rcutorture_shutdown_absorb("rcu_torture_stutter");
 } while (!kthread_should_stop());
 VERBOSE_PRINTK_STRING("rcu_torture_stutter task stopping");
 return 0;
}
