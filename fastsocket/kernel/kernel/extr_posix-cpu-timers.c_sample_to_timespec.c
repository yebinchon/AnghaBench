
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cpu_time_count {int cpu; int sched; } ;
struct timespec {int dummy; } ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_SCHED ;
 scalar_t__ CPUCLOCK_WHICH (int const) ;
 int cputime_to_timespec (int ,struct timespec*) ;
 struct timespec ns_to_timespec (int ) ;

__attribute__((used)) static void sample_to_timespec(const clockid_t which_clock,
          union cpu_time_count cpu,
          struct timespec *tp)
{
 if (CPUCLOCK_WHICH(which_clock) == CPUCLOCK_SCHED)
  *tp = ns_to_timespec(cpu.sched);
 else
  cputime_to_timespec(cpu.cpu, tp);
}
