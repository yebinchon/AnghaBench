
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int cpu_clock_event_update (struct perf_event*) ;
 int perf_swevent_cancel_hrtimer (struct perf_event*) ;

__attribute__((used)) static void cpu_clock_event_stop(struct perf_event *event, int flags)
{
 perf_swevent_cancel_hrtimer(event);
 cpu_clock_event_update(event);
}
