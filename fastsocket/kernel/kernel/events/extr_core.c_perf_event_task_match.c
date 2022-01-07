
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ task; scalar_t__ mmap_data; scalar_t__ mmap; scalar_t__ comm; } ;
struct perf_event {scalar_t__ state; TYPE_1__ attr; } ;


 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 int event_filter_match (struct perf_event*) ;

__attribute__((used)) static int perf_event_task_match(struct perf_event *event)
{
 if (event->state < PERF_EVENT_STATE_INACTIVE)
  return 0;

 if (!event_filter_match(event))
  return 0;

 if (event->attr.comm || event->attr.mmap ||
     event->attr.mmap_data || event->attr.task)
  return 1;

 return 0;
}
