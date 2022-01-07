
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptid; int tid; } ;
union perf_event {TYPE_1__ fork; } ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;


 int dump_printf (char*) ;
 scalar_t__ dump_trace ;
 struct thread* machine__findnew_thread (struct machine*,int ) ;
 int perf_event__fprintf_task (union perf_event*,int ) ;
 int stdout ;
 scalar_t__ thread__fork (struct thread*,struct thread*) ;

int machine__process_fork_event(struct machine *machine, union perf_event *event)
{
 struct thread *thread = machine__findnew_thread(machine, event->fork.tid);
 struct thread *parent = machine__findnew_thread(machine, event->fork.ptid);

 if (dump_trace)
  perf_event__fprintf_task(event, stdout);

 if (thread == ((void*)0) || parent == ((void*)0) ||
     thread__fork(thread, parent) < 0) {
  dump_printf("problem processing PERF_RECORD_FORK, skipping event.\n");
  return -1;
 }

 return 0;
}
