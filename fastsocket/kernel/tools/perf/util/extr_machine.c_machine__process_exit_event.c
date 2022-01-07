
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid; } ;
union perf_event {TYPE_1__ fork; } ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;


 scalar_t__ dump_trace ;
 struct thread* machine__find_thread (struct machine*,int ) ;
 int machine__remove_thread (struct machine*,struct thread*) ;
 int perf_event__fprintf_task (union perf_event*,int ) ;
 int stdout ;

int machine__process_exit_event(struct machine *machine, union perf_event *event)
{
 struct thread *thread = machine__find_thread(machine, event->fork.tid);

 if (dump_trace)
  perf_event__fprintf_task(event, stdout);

 if (thread != ((void*)0))
  machine__remove_thread(machine, thread);

 return 0;
}
