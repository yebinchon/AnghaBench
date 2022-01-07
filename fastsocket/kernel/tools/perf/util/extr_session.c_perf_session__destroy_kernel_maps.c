
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; int host_machine; } ;


 int machine__destroy_kernel_maps (int *) ;
 int machines__destroy_guest_kernel_maps (int *) ;

__attribute__((used)) static void perf_session__destroy_kernel_maps(struct perf_session *self)
{
 machine__destroy_kernel_maps(&self->host_machine);
 machines__destroy_guest_kernel_maps(&self->machines);
}
