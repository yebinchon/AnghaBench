
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int cpu; } ;


 scalar_t__ perf_cgroup_match (struct perf_event*) ;
 int smp_processor_id () ;

__attribute__((used)) static inline int
event_filter_match(struct perf_event *event)
{
 return (event->cpu == -1 || event->cpu == smp_processor_id())
     && perf_cgroup_match(event);
}
