
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lost; } ;
struct TYPE_5__ {int type; } ;
union perf_event {TYPE_2__ lost; TYPE_1__ header; } ;
typedef int u64 ;
struct perf_tool {int (* sample ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*) ;int (* mmap ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* comm ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* fork ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* exit ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* lost ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* read ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*) ;int (* throttle ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* unthrottle ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;} ;
struct TYPE_7__ {int nr_unknown_events; int total_lost; int nr_unprocessable_samples; int nr_unknown_id; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct perf_session {TYPE_4__ hists; int evlist; } ;
struct perf_sample {int id; } ;
struct perf_evsel {int hists; } ;
struct machine {int dummy; } ;
 int dump_event (struct perf_session*,union perf_event*,int ,struct perf_sample*) ;
 int dump_sample (struct perf_evsel*,union perf_event*,struct perf_sample*) ;
 int hists__inc_nr_events (int *,int) ;
 int perf_event__process_lost (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 struct perf_evsel* perf_evlist__id2evsel (int ,int ) ;
 struct machine* perf_session__find_machine_for_cpumode (struct perf_session*,union perf_event*) ;
 int stub1 (struct perf_tool*,union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*) ;
 int stub2 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub3 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub4 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub5 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub6 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub7 (struct perf_tool*,union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*) ;
 int stub8 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub9 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;

__attribute__((used)) static int perf_session_deliver_event(struct perf_session *session,
          union perf_event *event,
          struct perf_sample *sample,
          struct perf_tool *tool,
          u64 file_offset)
{
 struct perf_evsel *evsel;
 struct machine *machine;

 dump_event(session, event, file_offset, sample);

 evsel = perf_evlist__id2evsel(session->evlist, sample->id);
 if (evsel != ((void*)0) && event->header.type != 130) {
  hists__inc_nr_events(&evsel->hists, event->header.type);
 }

 machine = perf_session__find_machine_for_cpumode(session, event);

 switch (event->header.type) {
 case 130:
  dump_sample(evsel, event, sample);
  if (evsel == ((void*)0)) {
   ++session->hists.stats.nr_unknown_id;
   return 0;
  }
  if (machine == ((void*)0)) {
   ++session->hists.stats.nr_unprocessable_samples;
   return 0;
  }
  return tool->sample(tool, event, sample, evsel, machine);
 case 132:
  return tool->mmap(tool, event, sample, machine);
 case 136:
  return tool->comm(tool, event, sample, machine);
 case 134:
  return tool->fork(tool, event, sample, machine);
 case 135:
  return tool->exit(tool, event, sample, machine);
 case 133:
  if (tool->lost == perf_event__process_lost)
   session->hists.stats.total_lost += event->lost.lost;
  return tool->lost(tool, event, sample, machine);
 case 131:
  return tool->read(tool, event, sample, evsel, machine);
 case 129:
  return tool->throttle(tool, event, sample, machine);
 case 128:
  return tool->unthrottle(tool, event, sample, machine);
 default:
  ++session->hists.stats.nr_unknown_events;
  return -1;
 }
}
