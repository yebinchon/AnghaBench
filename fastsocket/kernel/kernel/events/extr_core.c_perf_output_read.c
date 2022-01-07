
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_output_handle {int dummy; } ;
struct TYPE_2__ {int read_format; } ;
struct perf_event {TYPE_1__ attr; } ;


 int PERF_FORMAT_GROUP ;
 int PERF_FORMAT_TOTAL_TIMES ;
 int calc_timer_values (struct perf_event*,int*,int*) ;
 int perf_output_read_group (struct perf_output_handle*,struct perf_event*,int,int) ;
 int perf_output_read_one (struct perf_output_handle*,struct perf_event*,int,int) ;

__attribute__((used)) static void perf_output_read(struct perf_output_handle *handle,
        struct perf_event *event)
{
 u64 enabled = 0, running = 0;
 u64 read_format = event->attr.read_format;
 if (read_format & PERF_FORMAT_TOTAL_TIMES)
  calc_timer_values(event, &enabled, &running);

 if (event->attr.read_format & PERF_FORMAT_GROUP)
  perf_output_read_group(handle, event, enabled, running);
 else
  perf_output_read_one(handle, event, enabled, running);
}
