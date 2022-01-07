
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_address_t ;
struct TYPE_3__ {int suspend_count; } ;
struct procinfo {TYPE_1__ taskinfo; } ;
struct inf {TYPE_2__* task; int pid; } ;
typedef int procinfo_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef scalar_t__ error_t ;
struct TYPE_4__ {int dead; int cur_sc; } ;


 int PI_FETCH_TASKINFO ;
 int error (char*) ;
 int mach_task_self () ;
 scalar_t__ proc_getprocinfo (int ,int ,int*,int *,scalar_t__*,char**,scalar_t__*) ;
 int proc_server ;
 int query (char*,int ,int) ;
 int target_terminal_inferior () ;
 int target_terminal_ours () ;
 int vm_deallocate (int ,int ,scalar_t__) ;

__attribute__((used)) static void
inf_validate_task_sc (struct inf *inf)
{
  char *noise;
  mach_msg_type_number_t noise_len = 0;
  struct procinfo *pi;
  mach_msg_type_number_t pi_len = 0;
  int info_flags = PI_FETCH_TASKINFO;
  int suspend_count = -1;
  error_t err;

 retry:
  err = proc_getprocinfo (proc_server, inf->pid, &info_flags,
     (procinfo_t *) &pi, &pi_len, &noise, &noise_len);
  if (err)
    {
      inf->task->dead = 1;
      return;
    }

  if (inf->task->cur_sc < pi->taskinfo.suspend_count && suspend_count == -1)
    {




      suspend_count = pi->taskinfo.suspend_count;
      goto retry;
    }

  suspend_count = pi->taskinfo.suspend_count;

  vm_deallocate (mach_task_self (), (vm_address_t) pi, pi_len);
  if (noise_len > 0)
    vm_deallocate (mach_task_self (), (vm_address_t) pi, pi_len);

  if (inf->task->cur_sc < suspend_count)
    {
      int abort;

      target_terminal_ours ();
      abort = !query ("Pid %d has an additional task suspend count of %d;"
        " clear it? ", inf->pid,
        suspend_count - inf->task->cur_sc);
      target_terminal_inferior ();

      if (abort)
 error ("Additional task suspend count left untouched.");

      inf->task->cur_sc = suspend_count;
    }
}
