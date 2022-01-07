
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_torture {int rtort_pipe_count; int rtort_mbtest; } ;
struct TYPE_2__ {long (* completed ) () ;int (* deferred_free ) (struct rcu_torture*) ;} ;
typedef int DEFINE_RCU_RANDOM ;


 scalar_t__ FULLSTOP_DONTSTOP ;
 int RCU_TORTURE_PIPE_LEN ;
 int VERBOSE_PRINTK_STRING (char*) ;
 int atomic_inc (int *) ;
 TYPE_1__* cur_ops ;
 int current ;
 scalar_t__ fullstop ;
 int kthread_should_stop () ;
 int rcu_assign_pointer (struct rcu_torture*,struct rcu_torture*) ;
 long rcu_batches_completed () ;
 int rcu_random (int *) ;
 int rcu_stutter_wait (char*) ;
 struct rcu_torture* rcu_torture_alloc () ;
 struct rcu_torture* rcu_torture_current ;
 int rcu_torture_current_version ;
 int * rcu_torture_wcount ;
 int rcutorture_shutdown_absorb (char*) ;
 int schedule_timeout_uninterruptible (int) ;
 int set_user_nice (int ,int) ;
 int smp_wmb () ;
 int stub1 (struct rcu_torture*) ;
 long stub2 () ;
 int udelay (int) ;

__attribute__((used)) static int
rcu_torture_writer(void *arg)
{
 int i;
 long oldbatch = rcu_batches_completed();
 struct rcu_torture *rp;
 struct rcu_torture *old_rp;
 static DEFINE_RCU_RANDOM(rand);

 VERBOSE_PRINTK_STRING("rcu_torture_writer task started");
 set_user_nice(current, 19);

 do {
  schedule_timeout_uninterruptible(1);
  rp = rcu_torture_alloc();
  if (rp == ((void*)0))
   continue;
  rp->rtort_pipe_count = 0;
  udelay(rcu_random(&rand) & 0x3ff);
  old_rp = rcu_torture_current;
  rp->rtort_mbtest = 1;
  rcu_assign_pointer(rcu_torture_current, rp);
  smp_wmb();
  if (old_rp) {
   i = old_rp->rtort_pipe_count;
   if (i > RCU_TORTURE_PIPE_LEN)
    i = RCU_TORTURE_PIPE_LEN;
   atomic_inc(&rcu_torture_wcount[i]);
   old_rp->rtort_pipe_count++;
   cur_ops->deferred_free(old_rp);
  }
  rcu_torture_current_version++;
  oldbatch = cur_ops->completed();
  rcu_stutter_wait("rcu_torture_writer");
 } while (!kthread_should_stop() && fullstop == FULLSTOP_DONTSTOP);
 VERBOSE_PRINTK_STRING("rcu_torture_writer task stopping");
 rcutorture_shutdown_absorb("rcu_torture_writer");
 while (!kthread_should_stop())
  schedule_timeout_uninterruptible(1);
 return 0;
}
