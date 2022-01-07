
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct machine {int dummy; } ;
struct dso {int has_build_id; } ;
typedef int bf ;
struct TYPE_2__ {char* vmlinux_name; char* default_guest_vmlinux_name; } ;


 int DSO_TYPE_GUEST_KERNEL ;
 int DSO_TYPE_KERNEL ;
 int PATH_MAX ;
 struct dso* dso__kernel_findnew (struct machine*,char const*,char*,int ) ;
 int dso__read_running_kernel_build_id (struct dso*,struct machine*) ;
 scalar_t__ machine__is_default_guest (struct machine*) ;
 scalar_t__ machine__is_host (struct machine*) ;
 char* machine__mmap_name (struct machine*,char*,int) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static struct dso *machine__get_kernel(struct machine *machine)
{
 const char *vmlinux_name = ((void*)0);
 struct dso *kernel;

 if (machine__is_host(machine)) {
  vmlinux_name = symbol_conf.vmlinux_name;
  if (!vmlinux_name)
   vmlinux_name = "[kernel.kallsyms]";

  kernel = dso__kernel_findnew(machine, vmlinux_name,
          "[kernel]",
          DSO_TYPE_KERNEL);
 } else {
  char bf[PATH_MAX];

  if (machine__is_default_guest(machine))
   vmlinux_name = symbol_conf.default_guest_vmlinux_name;
  if (!vmlinux_name)
   vmlinux_name = machine__mmap_name(machine, bf,
         sizeof(bf));

  kernel = dso__kernel_findnew(machine, vmlinux_name,
          "[guest.kernel]",
          DSO_TYPE_GUEST_KERNEL);
 }

 if (kernel != ((void*)0) && (!kernel->has_build_id))
  dso__read_running_kernel_build_id(kernel, machine);

 return kernel;
}
