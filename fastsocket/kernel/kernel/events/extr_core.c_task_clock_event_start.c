
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_count; } ;
struct perf_event {TYPE_2__* ctx; TYPE_1__ hw; } ;
struct TYPE_4__ {int time; } ;


 int local64_set (int *,int ) ;
 int perf_swevent_start_hrtimer (struct perf_event*) ;

__attribute__((used)) static void task_clock_event_start(struct perf_event *event, int flags)
{
 local64_set(&event->hw.prev_count, event->ctx->time);
 perf_swevent_start_hrtimer(event);
}
