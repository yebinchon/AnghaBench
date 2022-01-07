
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct thread {int dummy; } ;
struct perf_sample {int raw_size; int raw_data; int cpu; } ;
struct perf_event_attr {size_t type; } ;
struct perf_evsel {int tp_format; struct perf_event_attr attr; } ;
struct machine {int dummy; } ;
struct addr_location {struct thread* thread; } ;
struct TYPE_4__ {scalar_t__ fields; } ;
struct TYPE_3__ {int use_callchain; } ;


 int ADDR ;
 int DSO ;
 int IP ;
 scalar_t__ PRINT_FIELD (int ) ;
 int SYM ;
 int SYMOFFSET ;
 int TRACE ;
 int event_format__print (int ,int ,int ,int ) ;
 scalar_t__ is_bts_event (struct perf_event_attr*) ;
 TYPE_2__* output ;
 int perf_evsel__print_ip (struct perf_evsel*,union perf_event*,struct perf_sample*,struct machine*,scalar_t__,scalar_t__,scalar_t__) ;
 int print_sample_addr (union perf_event*,struct perf_sample*,struct machine*,struct thread*,struct perf_event_attr*) ;
 int print_sample_bts (union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*,struct thread*) ;
 int print_sample_start (struct perf_sample*,struct thread*,struct perf_evsel*) ;
 int printf (char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static void process_event(union perf_event *event, struct perf_sample *sample,
     struct perf_evsel *evsel, struct machine *machine,
     struct addr_location *al)
{
 struct perf_event_attr *attr = &evsel->attr;
 struct thread *thread = al->thread;

 if (output[attr->type].fields == 0)
  return;

 print_sample_start(sample, thread, evsel);

 if (is_bts_event(attr)) {
  print_sample_bts(event, sample, evsel, machine, thread);
  return;
 }

 if (PRINT_FIELD(TRACE))
  event_format__print(evsel->tp_format, sample->cpu,
        sample->raw_data, sample->raw_size);
 if (PRINT_FIELD(ADDR))
  print_sample_addr(event, sample, machine, thread, attr);

 if (PRINT_FIELD(IP)) {
  if (!symbol_conf.use_callchain)
   printf(" ");
  else
   printf("\n");
  perf_evsel__print_ip(evsel, event, sample, machine,
         PRINT_FIELD(SYM), PRINT_FIELD(DSO),
         PRINT_FIELD(SYMOFFSET));
 }

 printf("\n");
}
