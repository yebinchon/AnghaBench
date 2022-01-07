
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int filename; int pid; int pgoff; int len; int start; } ;
struct TYPE_3__ {scalar_t__ misc; } ;
union perf_event {TYPE_2__ mmap; TYPE_1__ header; } ;
typedef scalar_t__ u8 ;
struct thread {int dummy; } ;
struct map {int dummy; } ;
struct machine {int user_dsos; } ;


 int MAP__FUNCTION ;
 scalar_t__ PERF_RECORD_MISC_CPUMODE_MASK ;
 scalar_t__ PERF_RECORD_MISC_GUEST_KERNEL ;
 scalar_t__ PERF_RECORD_MISC_KERNEL ;
 int dump_printf (char*) ;
 scalar_t__ dump_trace ;
 struct thread* machine__findnew_thread (struct machine*,int ) ;
 int machine__process_kernel_mmap_event (struct machine*,union perf_event*) ;
 struct map* map__new (int *,int ,int ,int ,int ,int ,int ) ;
 int perf_event__fprintf_mmap (union perf_event*,int ) ;
 int stdout ;
 int thread__insert_map (struct thread*,struct map*) ;

int machine__process_mmap_event(struct machine *machine, union perf_event *event)
{
 u8 cpumode = event->header.misc & PERF_RECORD_MISC_CPUMODE_MASK;
 struct thread *thread;
 struct map *map;
 int ret = 0;

 if (dump_trace)
  perf_event__fprintf_mmap(event, stdout);

 if (cpumode == PERF_RECORD_MISC_GUEST_KERNEL ||
     cpumode == PERF_RECORD_MISC_KERNEL) {
  ret = machine__process_kernel_mmap_event(machine, event);
  if (ret < 0)
   goto out_problem;
  return 0;
 }

 thread = machine__findnew_thread(machine, event->mmap.pid);
 if (thread == ((void*)0))
  goto out_problem;
 map = map__new(&machine->user_dsos, event->mmap.start,
   event->mmap.len, event->mmap.pgoff,
   event->mmap.pid, event->mmap.filename,
   MAP__FUNCTION);
 if (map == ((void*)0))
  goto out_problem;

 thread__insert_map(thread, map);
 return 0;

out_problem:
 dump_printf("problem processing PERF_RECORD_MMAP, skipping event.\n");
 return 0;
}
