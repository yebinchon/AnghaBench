
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct perf_sample {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct machine {int dummy; } ;
struct addr_location {int dummy; } ;



 int python_process_general_event (union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*,struct addr_location*) ;
 int python_process_tracepoint (union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*,struct addr_location*) ;

__attribute__((used)) static void python_process_event(union perf_event *perf_event,
     struct perf_sample *sample,
     struct perf_evsel *evsel,
     struct machine *machine,
     struct addr_location *al)
{
 switch (evsel->attr.type) {
 case 128:
  python_process_tracepoint(perf_event, sample, evsel,
       machine, al);
  break;

 default:
  python_process_general_event(perf_event, sample, evsel,
          machine, al);
 }
}
