
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {int dummy; } ;
struct perf_event_attr {int sample_type; } ;
struct perf_evsel {struct perf_event_attr attr; } ;
struct TYPE_2__ {int use_callchain; } ;


 int ADDR ;
 int CPU ;
 int DSO ;
 int EINVAL ;
 int IP ;
 int PERF_OUTPUT_ADDR ;
 int PERF_OUTPUT_CPU ;
 int PERF_OUTPUT_IP ;
 int PERF_OUTPUT_PID ;
 int PERF_OUTPUT_TID ;
 int PERF_OUTPUT_TIME ;
 int PERF_SAMPLE_ADDR ;
 int PERF_SAMPLE_CALLCHAIN ;
 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_IP ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TIME ;
 int PID ;
 scalar_t__ PRINT_FIELD (int ) ;
 int SYM ;
 int SYMOFFSET ;
 int TID ;
 int TIME ;
 int TRACE ;
 int no_callchain ;
 scalar_t__ perf_evsel__check_stype (struct perf_evsel*,int ,char*,int) ;
 int perf_session__has_traces (struct perf_session*,char*) ;
 int pr_err (char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int perf_evsel__check_attr(struct perf_evsel *evsel,
      struct perf_session *session)
{
 struct perf_event_attr *attr = &evsel->attr;

 if (PRINT_FIELD(TRACE) &&
  !perf_session__has_traces(session, "record -R"))
  return -EINVAL;

 if (PRINT_FIELD(IP)) {
  if (perf_evsel__check_stype(evsel, PERF_SAMPLE_IP, "IP",
         PERF_OUTPUT_IP))
   return -EINVAL;

  if (!no_callchain &&
      !(attr->sample_type & PERF_SAMPLE_CALLCHAIN))
   symbol_conf.use_callchain = 0;
 }

 if (PRINT_FIELD(ADDR) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_ADDR, "ADDR",
     PERF_OUTPUT_ADDR))
  return -EINVAL;

 if (PRINT_FIELD(SYM) && !PRINT_FIELD(IP) && !PRINT_FIELD(ADDR)) {
  pr_err("Display of symbols requested but neither sample IP nor "
      "sample address\nis selected. Hence, no addresses to convert "
         "to symbols.\n");
  return -EINVAL;
 }
 if (PRINT_FIELD(SYMOFFSET) && !PRINT_FIELD(SYM)) {
  pr_err("Display of offsets requested but symbol is not"
         "selected.\n");
  return -EINVAL;
 }
 if (PRINT_FIELD(DSO) && !PRINT_FIELD(IP) && !PRINT_FIELD(ADDR)) {
  pr_err("Display of DSO requested but neither sample IP nor "
      "sample address\nis selected. Hence, no addresses to convert "
         "to DSO.\n");
  return -EINVAL;
 }

 if ((PRINT_FIELD(PID) || PRINT_FIELD(TID)) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_TID, "TID",
     PERF_OUTPUT_TID|PERF_OUTPUT_PID))
  return -EINVAL;

 if (PRINT_FIELD(TIME) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_TIME, "TIME",
     PERF_OUTPUT_TIME))
  return -EINVAL;

 if (PRINT_FIELD(CPU) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_CPU, "CPU",
     PERF_OUTPUT_CPU))
  return -EINVAL;

 return 0;
}
