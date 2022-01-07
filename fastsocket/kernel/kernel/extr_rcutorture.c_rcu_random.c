
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_random_state {scalar_t__ rrs_count; unsigned long rrs_state; } ;


 int RCU_RANDOM_ADD ;
 int RCU_RANDOM_MULT ;
 scalar_t__ RCU_RANDOM_REFRESH ;
 scalar_t__ cpu_clock (int ) ;
 int raw_smp_processor_id () ;
 unsigned long swahw32 (int) ;

__attribute__((used)) static unsigned long
rcu_random(struct rcu_random_state *rrsp)
{
 if (--rrsp->rrs_count < 0) {
  rrsp->rrs_state +=
   (unsigned long)cpu_clock(raw_smp_processor_id());
  rrsp->rrs_count = RCU_RANDOM_REFRESH;
 }
 rrsp->rrs_state = rrsp->rrs_state * RCU_RANDOM_MULT + RCU_RANDOM_ADD;
 return swahw32(rrsp->rrs_state);
}
