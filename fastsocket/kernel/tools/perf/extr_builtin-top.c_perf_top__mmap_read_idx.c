
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int misc; scalar_t__ type; } ;
struct TYPE_5__ {int pid; } ;
union perf_event {TYPE_2__ header; TYPE_1__ ip; } ;
typedef int u8 ;
struct perf_top {int tool; int guest_us_samples; int guest_kernel_samples; int hide_kernel_symbols; int kernel_samples; int hide_user_symbols; int us_samples; int samples; int evlist; struct perf_session* session; } ;
struct TYPE_7__ {int nr_unknown_events; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct perf_session {TYPE_4__ hists; int evlist; } ;
struct perf_sample {int id; } ;
struct perf_evsel {int hists; } ;
struct machine {int dummy; } ;


 scalar_t__ PERF_RECORD_MAX ;
 int PERF_RECORD_MISC_CPUMODE_MASK ;




 scalar_t__ PERF_RECORD_SAMPLE ;
 int assert (int ) ;
 int hists__inc_nr_events (int *,scalar_t__) ;
 int machine__process_event (struct machine*,union perf_event*) ;
 int perf_event__process_sample (int *,union perf_event*,struct perf_evsel*,struct perf_sample*,struct machine*) ;
 struct perf_evsel* perf_evlist__id2evsel (int ,int ) ;
 union perf_event* perf_evlist__mmap_read (int ,int) ;
 int perf_evlist__parse_sample (int ,union perf_event*,struct perf_sample*) ;
 struct machine* perf_session__find_host_machine (struct perf_session*) ;
 struct machine* perf_session__find_machine (struct perf_session*,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void perf_top__mmap_read_idx(struct perf_top *top, int idx)
{
 struct perf_sample sample;
 struct perf_evsel *evsel;
 struct perf_session *session = top->session;
 union perf_event *event;
 struct machine *machine;
 u8 origin;
 int ret;

 while ((event = perf_evlist__mmap_read(top->evlist, idx)) != ((void*)0)) {
  ret = perf_evlist__parse_sample(top->evlist, event, &sample);
  if (ret) {
   pr_err("Can't parse sample, err = %d\n", ret);
   continue;
  }

  evsel = perf_evlist__id2evsel(session->evlist, sample.id);
  assert(evsel != ((void*)0));

  origin = event->header.misc & PERF_RECORD_MISC_CPUMODE_MASK;

  if (event->header.type == PERF_RECORD_SAMPLE)
   ++top->samples;

  switch (origin) {
  case 128:
   ++top->us_samples;
   if (top->hide_user_symbols)
    continue;
   machine = perf_session__find_host_machine(session);
   break;
  case 129:
   ++top->kernel_samples;
   if (top->hide_kernel_symbols)
    continue;
   machine = perf_session__find_host_machine(session);
   break;
  case 131:
   ++top->guest_kernel_samples;
   machine = perf_session__find_machine(session, event->ip.pid);
   break;
  case 130:
   ++top->guest_us_samples;





  default:
   continue;
  }


  if (event->header.type == PERF_RECORD_SAMPLE) {
   perf_event__process_sample(&top->tool, event, evsel,
         &sample, machine);
  } else if (event->header.type < PERF_RECORD_MAX) {
   hists__inc_nr_events(&evsel->hists, event->header.type);
   machine__process_event(machine, event);
  } else
   ++session->hists.stats.nr_unknown_events;
 }
}
