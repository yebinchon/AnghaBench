
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_tool {int ordered_samples; int comm; int sample; } ;


 int O_RDONLY ;
 int input_name ;
 int lock_tracepoints ;
 int perf_event__process_comm ;
 int perf_session__new (int ,int ,int ,int,struct perf_tool*) ;
 int perf_session__process_events (int ,struct perf_tool*) ;
 scalar_t__ perf_session__set_tracepoints_handlers (int ,int ) ;
 int pr_err (char*) ;
 int process_sample_event ;
 int session ;

__attribute__((used)) static int read_events(void)
{
 struct perf_tool eops = {
  .sample = process_sample_event,
  .comm = perf_event__process_comm,
  .ordered_samples = 1,
 };
 session = perf_session__new(input_name, O_RDONLY, 0, 0, &eops);
 if (!session) {
  pr_err("Initializing perf session failed\n");
  return -1;
 }

 if (perf_session__set_tracepoints_handlers(session, lock_tracepoints)) {
  pr_err("Initializing perf session tracepoint handlers failed\n");
  return -1;
 }

 return perf_session__process_events(session, &eops);
}
