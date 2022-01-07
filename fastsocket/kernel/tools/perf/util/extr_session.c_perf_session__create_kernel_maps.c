
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; int host_machine; } ;


 int machine__create_kernel_maps (int *) ;
 int machines__create_guest_kernel_maps (int *) ;

int perf_session__create_kernel_maps(struct perf_session *self)
{
 int ret = machine__create_kernel_maps(&self->host_machine);

 if (ret >= 0)
  ret = machines__create_guest_kernel_maps(&self->machines);
 return ret;
}
