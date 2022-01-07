
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long start; unsigned long long len; } ;
union perf_event {TYPE_1__ mmap; } ;
struct machine {TYPE_2__** vmlinux_maps; } ;
struct TYPE_4__ {unsigned long long start; unsigned long long end; } ;


 int MAP__NR_TYPES ;

__attribute__((used)) static void machine__set_kernel_mmap_len(struct machine *machine,
      union perf_event *event)
{
 int i;

 for (i = 0; i < MAP__NR_TYPES; i++) {
  machine->vmlinux_maps[i]->start = event->mmap.start;
  machine->vmlinux_maps[i]->end = (event->mmap.start +
         event->mmap.len);




  if (machine->vmlinux_maps[i]->end == 0)
   machine->vmlinux_maps[i]->end = ~0ULL;
 }
}
