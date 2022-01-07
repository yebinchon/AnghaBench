
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ config; } ;
struct perf_event {TYPE_1__ attr; } ;


 int ENOENT ;
 scalar_t__ PERF_COUNT_SW_TASK_CLOCK ;
 scalar_t__ PERF_TYPE_SOFTWARE ;
 int perf_swevent_init_hrtimer (struct perf_event*) ;

__attribute__((used)) static int task_clock_event_init(struct perf_event *event)
{
 if (event->attr.type != PERF_TYPE_SOFTWARE)
  return -ENOENT;

 if (event->attr.config != PERF_COUNT_SW_TASK_CLOCK)
  return -ENOENT;

 perf_swevent_init_hrtimer(event);

 return 0;
}
