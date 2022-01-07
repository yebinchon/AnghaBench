
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int comm; int tid; } ;
union perf_event {TYPE_1__ comm; } ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;


 int dump_printf (char*) ;
 scalar_t__ dump_trace ;
 struct thread* machine__findnew_thread (struct machine*,int ) ;
 int perf_event__fprintf_comm (union perf_event*,int ) ;
 int stdout ;
 scalar_t__ thread__set_comm (struct thread*,int ) ;

int machine__process_comm_event(struct machine *machine, union perf_event *event)
{
 struct thread *thread = machine__findnew_thread(machine, event->comm.tid);

 if (dump_trace)
  perf_event__fprintf_comm(event, stdout);

 if (thread == ((void*)0) || thread__set_comm(thread, event->comm.comm)) {
  dump_printf("problem processing PERF_RECORD_COMM, skipping event.\n");
  return -1;
 }

 return 0;
}
