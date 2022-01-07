
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time; void* ptid; void* ppid; void* tid; void* pid; } ;
union perf_event {TYPE_1__ fork; } ;


 void* bswap_32 (void*) ;
 int bswap_64 (int ) ;
 int swap_sample_id_all (union perf_event*,TYPE_1__*) ;

__attribute__((used)) static void perf_event__task_swap(union perf_event *event, bool sample_id_all)
{
 event->fork.pid = bswap_32(event->fork.pid);
 event->fork.tid = bswap_32(event->fork.tid);
 event->fork.ppid = bswap_32(event->fork.ppid);
 event->fork.ptid = bswap_32(event->fork.ptid);
 event->fork.time = bswap_64(event->fork.time);

 if (sample_id_all)
  swap_sample_id_all(event, &event->fork + 1);
}
