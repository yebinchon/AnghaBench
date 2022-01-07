
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_tool {int ordered_samples; int sample; int exit; int fork; int comm; } ;
struct perf_session {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int O_RDONLY ;
 int end_sample_processing () ;
 double first_time ;
 int input_name ;
 double last_time ;
 int perf_session__delete (struct perf_session*) ;
 int perf_session__has_traces (struct perf_session*,char*) ;
 struct perf_session* perf_session__new (int ,int ,int ,int,struct perf_tool*) ;
 int perf_session__process_events (struct perf_session*,struct perf_tool*) ;
 int pr_info (char*,double,char const*) ;
 int process_comm_event ;
 int process_exit_event ;
 int process_fork_event ;
 int process_sample_event ;
 int sort_pids () ;
 int write_svg_file (char const*) ;

__attribute__((used)) static int __cmd_timechart(const char *output_name)
{
 struct perf_tool perf_timechart = {
  .comm = process_comm_event,
  .fork = process_fork_event,
  .exit = process_exit_event,
  .sample = process_sample_event,
  .ordered_samples = 1,
 };
 struct perf_session *session = perf_session__new(input_name, O_RDONLY,
        0, 0, &perf_timechart);
 int ret = -EINVAL;

 if (session == ((void*)0))
  return -ENOMEM;

 if (!perf_session__has_traces(session, "timechart record"))
  goto out_delete;

 ret = perf_session__process_events(session, &perf_timechart);
 if (ret)
  goto out_delete;

 end_sample_processing();

 sort_pids();

 write_svg_file(output_name);

 pr_info("Written %2.1f seconds of trace to %s.\n",
  (last_time - first_time) / 1000000000.0, output_name);
out_delete:
 perf_session__delete(session);
 return ret;
}
