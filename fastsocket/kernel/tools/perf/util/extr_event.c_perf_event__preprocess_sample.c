
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ip; int pid; } ;
struct TYPE_6__ {scalar_t__ misc; } ;
union perf_event {TYPE_2__ ip; TYPE_1__ header; } ;
typedef scalar_t__ u8 ;
typedef int symbol_filter_t ;
struct thread {scalar_t__ comm; int pid; } ;
struct perf_sample {int cpu; } ;
struct machine {int ** vmlinux_maps; } ;
struct dso {char* long_name; scalar_t__ short_name; } ;
struct addr_location {char level; int filtered; TYPE_4__* sym; int addr; TYPE_5__* map; int cpu; } ;
struct TYPE_10__ {struct dso* dso; } ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_8__ {scalar_t__ sym_list; scalar_t__ dso_list; scalar_t__ comm_list; } ;


 size_t MAP__FUNCTION ;
 scalar_t__ PERF_RECORD_MISC_CPUMODE_MASK ;
 scalar_t__ PERF_RECORD_MISC_KERNEL ;
 int dump_printf (char*,char*,...) ;
 int machine__create_kernel_maps (struct machine*) ;
 struct thread* machine__findnew_thread (struct machine*,int ) ;
 TYPE_4__* map__find_symbol (TYPE_5__*,int ,int ) ;
 scalar_t__ strlist__has_entry (scalar_t__,scalar_t__) ;
 TYPE_3__ symbol_conf ;
 int thread__find_addr_map (struct thread*,struct machine*,scalar_t__,size_t,int ,struct addr_location*) ;

int perf_event__preprocess_sample(const union perf_event *event,
      struct machine *machine,
      struct addr_location *al,
      struct perf_sample *sample,
      symbol_filter_t filter)
{
 u8 cpumode = event->header.misc & PERF_RECORD_MISC_CPUMODE_MASK;
 struct thread *thread = machine__findnew_thread(machine, event->ip.pid);

 if (thread == ((void*)0))
  return -1;

 if (symbol_conf.comm_list &&
     !strlist__has_entry(symbol_conf.comm_list, thread->comm))
  goto out_filtered;

 dump_printf(" ... thread: %s:%d\n", thread->comm, thread->pid);







 if (cpumode == PERF_RECORD_MISC_KERNEL &&
     machine->vmlinux_maps[MAP__FUNCTION] == ((void*)0))
  machine__create_kernel_maps(machine);

 thread__find_addr_map(thread, machine, cpumode, MAP__FUNCTION,
         event->ip.ip, al);
 dump_printf(" ...... dso: %s\n",
      al->map ? al->map->dso->long_name :
   al->level == 'H' ? "[hypervisor]" : "<not found>");
 al->sym = ((void*)0);
 al->cpu = sample->cpu;

 if (al->map) {
  struct dso *dso = al->map->dso;

  if (symbol_conf.dso_list &&
      (!dso || !(strlist__has_entry(symbol_conf.dso_list,
        dso->short_name) ||
          (dso->short_name != dso->long_name &&
    strlist__has_entry(symbol_conf.dso_list,
         dso->long_name)))))
   goto out_filtered;

  al->sym = map__find_symbol(al->map, al->addr, filter);
 }

 if (symbol_conf.sym_list &&
  (!al->sym || !strlist__has_entry(symbol_conf.sym_list,
      al->sym->name)))
  goto out_filtered;

 return 0;

out_filtered:
 al->filtered = 1;
 return 0;
}
