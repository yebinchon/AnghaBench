
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int pid; } ;


 scalar_t__ machine__is_default_guest (struct machine*) ;
 scalar_t__ machine__is_host (struct machine*) ;
 int snprintf (char*,size_t,char*,char*,...) ;

char *machine__mmap_name(struct machine *machine, char *bf, size_t size)
{
 if (machine__is_host(machine))
  snprintf(bf, size, "[%s]", "kernel.kallsyms");
 else if (machine__is_default_guest(machine))
  snprintf(bf, size, "[%s]", "guest.kernel.kallsyms");
 else {
  snprintf(bf, size, "[%s.%d]", "guest.kernel.kallsyms",
    machine->pid);
 }

 return bf;
}
