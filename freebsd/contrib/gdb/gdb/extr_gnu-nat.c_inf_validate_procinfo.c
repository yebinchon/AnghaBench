
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_address_t ;
struct procinfo {int state; } ;
struct inf {int stopped; int nomsg; int traced; int pid; } ;
typedef int procinfo_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef int error_t ;


 int PI_NOMSG ;
 int PI_STOPPED ;
 int PI_TRACED ;
 int mach_task_self () ;
 int proc_getprocinfo (int ,int ,int*,int *,scalar_t__*,char**,scalar_t__*) ;
 int proc_server ;
 int vm_deallocate (int ,int ,scalar_t__) ;

__attribute__((used)) static void
inf_validate_procinfo (struct inf *inf)
{
  char *noise;
  mach_msg_type_number_t noise_len = 0;
  struct procinfo *pi;
  mach_msg_type_number_t pi_len = 0;
  int info_flags = 0;
  error_t err =
  proc_getprocinfo (proc_server, inf->pid, &info_flags,
      (procinfo_t *) &pi, &pi_len, &noise, &noise_len);

  if (!err)
    {
      inf->stopped = !!(pi->state & PI_STOPPED);
      inf->nomsg = !!(pi->state & PI_NOMSG);
      if (inf->nomsg)
 inf->traced = !!(pi->state & PI_TRACED);
      vm_deallocate (mach_task_self (), (vm_address_t) pi, pi_len);
      if (noise_len > 0)
 vm_deallocate (mach_task_self (), (vm_address_t) noise, noise_len);
    }
}
