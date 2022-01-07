
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_tool {int dummy; } ;
struct machine {int dummy; } ;
typedef int pid_t ;
typedef int perf_event__handler_t ;


 int perf_event__synthesize_comm (struct perf_tool*,union perf_event*,int,int,int ,struct machine*) ;
 int perf_event__synthesize_mmap_events (struct perf_tool*,union perf_event*,int,int,int ,struct machine*) ;

__attribute__((used)) static int __event__synthesize_thread(union perf_event *comm_event,
          union perf_event *mmap_event,
          pid_t pid, int full,
       perf_event__handler_t process,
          struct perf_tool *tool,
          struct machine *machine)
{
 pid_t tgid = perf_event__synthesize_comm(tool, comm_event, pid, full,
       process, machine);
 if (tgid == -1)
  return -1;
 return perf_event__synthesize_mmap_events(tool, mmap_event, pid, tgid,
        process, machine);
}
