
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sched {int max_cpu; } ;


 int _SC_NPROCESSORS_CONF ;
 scalar_t__ perf_sched__read_events (struct perf_sched*,int,int *) ;
 int print_bad_events (struct perf_sched*) ;
 int setup_pager () ;
 int sysconf (int ) ;

__attribute__((used)) static int perf_sched__map(struct perf_sched *sched)
{
 sched->max_cpu = sysconf(_SC_NPROCESSORS_CONF);

 setup_pager();
 if (perf_sched__read_events(sched, 1, ((void*)0)))
  return -1;
 print_bad_events(sched);
 return 0;
}
