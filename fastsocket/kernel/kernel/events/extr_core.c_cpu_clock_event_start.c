
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;


 int local64_set (int *,int ) ;
 int local_clock () ;
 int perf_swevent_start_hrtimer (struct perf_event*) ;

__attribute__((used)) static void cpu_clock_event_start(struct perf_event *event, int flags)
{
 local64_set(&event->hw.prev_count, local_clock());
 perf_swevent_start_hrtimer(event);
}
