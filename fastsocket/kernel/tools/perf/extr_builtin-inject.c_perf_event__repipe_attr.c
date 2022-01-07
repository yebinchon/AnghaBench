
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_tool {int dummy; } ;
struct perf_evlist {int dummy; } ;


 int perf_event__process_attr (struct perf_tool*,union perf_event*,struct perf_evlist**) ;
 int perf_event__repipe_synth (struct perf_tool*,union perf_event*) ;

__attribute__((used)) static int perf_event__repipe_attr(struct perf_tool *tool,
       union perf_event *event,
       struct perf_evlist **pevlist)
{
 int ret;

 ret = perf_event__process_attr(tool, event, pevlist);
 if (ret)
  return ret;

 return perf_event__repipe_synth(tool, event);
}
