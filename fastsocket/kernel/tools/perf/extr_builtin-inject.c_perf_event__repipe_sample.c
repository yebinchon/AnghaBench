
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct perf_tool {int dummy; } ;
struct perf_sample {int dummy; } ;
struct TYPE_2__ {int (* func ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*) ;} ;
struct perf_evsel {TYPE_1__ handler; } ;
struct machine {int dummy; } ;
typedef int (* inject_handler ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*) ;


 int build_id__mark_dso_hit (struct perf_tool*,union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*) ;
 int perf_event__repipe_synth (struct perf_tool*,union perf_event*) ;

__attribute__((used)) static int perf_event__repipe_sample(struct perf_tool *tool,
         union perf_event *event,
         struct perf_sample *sample,
         struct perf_evsel *evsel,
         struct machine *machine)
{
 if (evsel->handler.func) {
  inject_handler f = evsel->handler.func;
  return f(tool, event, sample, evsel, machine);
 }

 build_id__mark_dso_hit(tool, event, sample, evsel, machine);

 return perf_event__repipe_synth(tool, event);
}
