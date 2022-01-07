
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct machine {int dummy; } ;
typedef int pid_t ;


 int machine__create_kernel_maps (struct machine*) ;
 struct machine* machines__findnew (struct rb_root*,int ) ;

int machines__create_kernel_maps(struct rb_root *machines, pid_t pid)
{
 struct machine *machine = machines__findnew(machines, pid);

 if (machine == ((void*)0))
  return -1;

 return machine__create_kernel_maps(machine);
}
