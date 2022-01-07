
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct thread {int dummy; } ;
struct perf_sample {int dummy; } ;
struct perf_event_attr {int dummy; } ;
struct perf_evsel {struct perf_event_attr attr; } ;
struct machine {int dummy; } ;
struct TYPE_2__ {int use_callchain; } ;


 int ADDR ;
 int DSO ;
 int IP ;
 scalar_t__ PRINT_FIELD (int ) ;
 int SYM ;
 int SYMOFFSET ;
 int perf_evsel__print_ip (struct perf_evsel*,union perf_event*,struct perf_sample*,struct machine*,scalar_t__,scalar_t__,scalar_t__) ;
 int print_sample_addr (union perf_event*,struct perf_sample*,struct machine*,struct thread*,struct perf_event_attr*) ;
 int printf (char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static void print_sample_bts(union perf_event *event,
        struct perf_sample *sample,
        struct perf_evsel *evsel,
        struct machine *machine,
        struct thread *thread)
{
 struct perf_event_attr *attr = &evsel->attr;


 if (PRINT_FIELD(IP)) {
  if (!symbol_conf.use_callchain)
   printf(" ");
  else
   printf("\n");
  perf_evsel__print_ip(evsel, event, sample, machine,
         PRINT_FIELD(SYM), PRINT_FIELD(DSO),
         PRINT_FIELD(SYMOFFSET));
 }

 printf(" => ");


 if (PRINT_FIELD(ADDR))
  print_sample_addr(event, sample, machine, thread, attr);

 printf("\n");
}
