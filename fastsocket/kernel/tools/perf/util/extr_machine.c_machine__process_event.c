
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union perf_event {TYPE_1__ header; } ;
struct machine {int dummy; } ;







 int machine__process_comm_event (struct machine*,union perf_event*) ;
 int machine__process_exit_event (struct machine*,union perf_event*) ;
 int machine__process_fork_event (struct machine*,union perf_event*) ;
 int machine__process_lost_event (struct machine*,union perf_event*) ;
 int machine__process_mmap_event (struct machine*,union perf_event*) ;

int machine__process_event(struct machine *machine, union perf_event *event)
{
 int ret;

 switch (event->header.type) {
 case 132:
  ret = machine__process_comm_event(machine, event); break;
 case 128:
  ret = machine__process_mmap_event(machine, event); break;
 case 130:
  ret = machine__process_fork_event(machine, event); break;
 case 131:
  ret = machine__process_exit_event(machine, event); break;
 case 129:
  ret = machine__process_lost_event(machine, event); break;
 default:
  ret = -1;
  break;
 }

 return ret;
}
