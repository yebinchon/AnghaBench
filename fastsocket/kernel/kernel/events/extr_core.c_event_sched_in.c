
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct perf_event_context {int nr_freq; int nr_active; } ;
struct TYPE_6__ {scalar_t__ exclusive; scalar_t__ sample_freq; scalar_t__ freq; } ;
struct TYPE_4__ {scalar_t__ interrupts; } ;
struct perf_event {scalar_t__ state; int oncpu; TYPE_3__ attr; scalar_t__ tstamp_stopped; int tstamp_running; TYPE_2__* pmu; TYPE_1__ hw; } ;
struct perf_cpu_context {int exclusive; int active_oncpu; } ;
struct TYPE_5__ {scalar_t__ (* add ) (struct perf_event*,int ) ;} ;


 int EAGAIN ;
 scalar_t__ MAX_INTERRUPTS ;
 int PERF_EF_START ;
 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 scalar_t__ PERF_EVENT_STATE_OFF ;
 int is_software_event (struct perf_event*) ;
 scalar_t__ perf_event_time (struct perf_event*) ;
 int perf_log_throttle (struct perf_event*,int) ;
 int perf_set_shadow_time (struct perf_event*,struct perf_event_context*,scalar_t__) ;
 int smp_processor_id () ;
 int smp_wmb () ;
 scalar_t__ stub1 (struct perf_event*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
event_sched_in(struct perf_event *event,
   struct perf_cpu_context *cpuctx,
   struct perf_event_context *ctx)
{
 u64 tstamp = perf_event_time(event);

 if (event->state <= PERF_EVENT_STATE_OFF)
  return 0;

 event->state = PERF_EVENT_STATE_ACTIVE;
 event->oncpu = smp_processor_id();






 if (unlikely(event->hw.interrupts == MAX_INTERRUPTS)) {
  perf_log_throttle(event, 1);
  event->hw.interrupts = 0;
 }




 smp_wmb();

 if (event->pmu->add(event, PERF_EF_START)) {
  event->state = PERF_EVENT_STATE_INACTIVE;
  event->oncpu = -1;
  return -EAGAIN;
 }

 event->tstamp_running += tstamp - event->tstamp_stopped;

 perf_set_shadow_time(event, ctx, tstamp);

 if (!is_software_event(event))
  cpuctx->active_oncpu++;
 ctx->nr_active++;
 if (event->attr.freq && event->attr.sample_freq)
  ctx->nr_freq++;

 if (event->attr.exclusive)
  cpuctx->exclusive = 1;

 return 0;
}
