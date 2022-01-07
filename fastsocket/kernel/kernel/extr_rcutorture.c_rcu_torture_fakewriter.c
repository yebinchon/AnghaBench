
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* sync ) () ;} ;


 int DEFINE_RCU_RANDOM (int ) ;
 scalar_t__ FULLSTOP_DONTSTOP ;
 int VERBOSE_PRINTK_STRING (char*) ;
 TYPE_1__* cur_ops ;
 int current ;
 scalar_t__ fullstop ;
 int kthread_should_stop () ;
 int rand ;
 int rcu_random (int *) ;
 int rcu_stutter_wait (char*) ;
 int rcutorture_shutdown_absorb (char*) ;
 int schedule_timeout_uninterruptible (int) ;
 int set_user_nice (int ,int) ;
 int stub1 () ;
 int udelay (int) ;

__attribute__((used)) static int
rcu_torture_fakewriter(void *arg)
{
 DEFINE_RCU_RANDOM(rand);

 VERBOSE_PRINTK_STRING("rcu_torture_fakewriter task started");
 set_user_nice(current, 19);

 do {
  schedule_timeout_uninterruptible(1 + rcu_random(&rand)%10);
  udelay(rcu_random(&rand) & 0x3ff);
  cur_ops->sync();
  rcu_stutter_wait("rcu_torture_fakewriter");
 } while (!kthread_should_stop() && fullstop == FULLSTOP_DONTSTOP);

 VERBOSE_PRINTK_STRING("rcu_torture_fakewriter task stopping");
 rcutorture_shutdown_absorb("rcu_torture_fakewriter");
 while (!kthread_should_stop())
  schedule_timeout_uninterruptible(1);
 return 0;
}
