
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct perf_event {scalar_t__ state; TYPE_2__* pmu; TYPE_1__ hw; } ;
struct TYPE_4__ {int (* event_idx ) (struct perf_event*) ;} ;


 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 int PERF_HES_STOPPED ;
 int stub1 (struct perf_event*) ;

__attribute__((used)) static int perf_event_index(struct perf_event *event)
{
 if (event->hw.state & PERF_HES_STOPPED)
  return 0;

 if (event->state != PERF_EVENT_STATE_ACTIVE)
  return 0;

 return event->pmu->event_idx(event);
}
