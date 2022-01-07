
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_tool {int dummy; } ;
struct perf_session {int dummy; } ;


 int perf_event__process_tracing_data (struct perf_tool*,union perf_event*,struct perf_session*) ;
 int perf_event__repipe_synth (struct perf_tool*,union perf_event*) ;

__attribute__((used)) static int perf_event__repipe_tracing_data(struct perf_tool *tool,
        union perf_event *event,
        struct perf_session *session)
{
 int err;

 perf_event__repipe_synth(tool, event);
 err = perf_event__process_tracing_data(tool, event, session);

 return err;
}
