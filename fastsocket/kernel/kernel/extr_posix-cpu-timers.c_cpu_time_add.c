
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cpu_time_count {int cpu; scalar_t__ sched; } ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_SCHED ;
 scalar_t__ CPUCLOCK_WHICH (int const) ;
 int cputime_add (int ,int ) ;

__attribute__((used)) static inline void cpu_time_add(const clockid_t which_clock,
    union cpu_time_count *acc,
           union cpu_time_count val)
{
 if (CPUCLOCK_WHICH(which_clock) == CPUCLOCK_SCHED) {
  acc->sched += val.sched;
 } else {
  acc->cpu = cputime_add(acc->cpu, val.cpu);
 }
}
