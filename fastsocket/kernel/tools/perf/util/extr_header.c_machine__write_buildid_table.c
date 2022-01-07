
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct machine {int pid; int user_dsos; int kernel_dsos; } ;


 int PERF_RECORD_MISC_GUEST_KERNEL ;
 int PERF_RECORD_MISC_GUEST_USER ;
 int PERF_RECORD_MISC_KERNEL ;
 int PERF_RECORD_MISC_USER ;
 int __dsos__write_buildid_table (int *,int ,int ,int) ;
 int machine__is_host (struct machine*) ;

__attribute__((used)) static int machine__write_buildid_table(struct machine *machine, int fd)
{
 int err;
 u16 kmisc = PERF_RECORD_MISC_KERNEL,
     umisc = PERF_RECORD_MISC_USER;

 if (!machine__is_host(machine)) {
  kmisc = PERF_RECORD_MISC_GUEST_KERNEL;
  umisc = PERF_RECORD_MISC_GUEST_USER;
 }

 err = __dsos__write_buildid_table(&machine->kernel_dsos, machine->pid,
       kmisc, fd);
 if (err == 0)
  err = __dsos__write_buildid_table(&machine->user_dsos,
        machine->pid, umisc, fd);
 return err;
}
