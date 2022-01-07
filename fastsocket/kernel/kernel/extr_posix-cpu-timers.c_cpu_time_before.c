
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cpu_time_count {scalar_t__ sched; int cpu; } ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_SCHED ;
 scalar_t__ CPUCLOCK_WHICH (int const) ;
 int cputime_lt (int ,int ) ;

__attribute__((used)) static inline int cpu_time_before(const clockid_t which_clock,
      union cpu_time_count now,
      union cpu_time_count then)
{
 if (CPUCLOCK_WHICH(which_clock) == CPUCLOCK_SCHED) {
  return now.sched < then.sched;
 } else {
  return cputime_lt(now.cpu, then.cpu);
 }
}
