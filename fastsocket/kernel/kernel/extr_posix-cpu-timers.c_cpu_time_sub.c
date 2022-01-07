
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cpu_time_count {int cpu; scalar_t__ sched; } ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_SCHED ;
 scalar_t__ CPUCLOCK_WHICH (int const) ;
 int cputime_sub (int ,int ) ;

__attribute__((used)) static inline union cpu_time_count cpu_time_sub(const clockid_t which_clock,
      union cpu_time_count a,
      union cpu_time_count b)
{
 if (CPUCLOCK_WHICH(which_clock) == CPUCLOCK_SCHED) {
  a.sched -= b.sched;
 } else {
  a.cpu = cputime_sub(a.cpu, b.cpu);
 }
 return a;
}
