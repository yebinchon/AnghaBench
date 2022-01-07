
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct machine {int kmaps; int pid; } ;
struct dso {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_modules; } ;


 scalar_t__ __machine__create_kernel_maps (struct machine*,struct dso*) ;
 scalar_t__ machine__create_modules (struct machine*) ;
 struct dso* machine__get_kernel (struct machine*) ;
 scalar_t__ machine__is_host (struct machine*) ;
 int map_groups__fixup_end (int *) ;
 int pr_debug (char*,...) ;
 TYPE_1__ symbol_conf ;

int machine__create_kernel_maps(struct machine *machine)
{
 struct dso *kernel = machine__get_kernel(machine);

 if (kernel == ((void*)0) ||
     __machine__create_kernel_maps(machine, kernel) < 0)
  return -1;

 if (symbol_conf.use_modules && machine__create_modules(machine) < 0) {
  if (machine__is_host(machine))
   pr_debug("Problems creating module maps, "
     "continuing anyway...\n");
  else
   pr_debug("Problems creating module maps for guest %d, "
     "continuing anyway...\n", machine->pid);
 }




 map_groups__fixup_end(&machine->kmaps);
 return 0;
}
