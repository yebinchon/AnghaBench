
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; } ;
struct TYPE_5__ {int suppress; TYPE_3__ status; } ;
struct inf {scalar_t__ pid; int no_wait; int stopped; TYPE_2__ wait; TYPE_1__* task; } ;
typedef int rusage_t ;
typedef scalar_t__ pid_t ;
typedef int mach_port_t ;
typedef scalar_t__ error_t ;
struct TYPE_4__ {int port; } ;


 scalar_t__ EINTR ;
 scalar_t__ TARGET_WAITKIND_STOPPED ;
 int inf_debug (struct inf*,char*,...) ;
 int inf_set_traced (struct inf*,int ) ;
 int inf_task_died_status (struct inf*) ;
 scalar_t__ proc_wait_pid ;
 scalar_t__ proc_waits_pending ;
 char* safe_strerror (scalar_t__) ;
 int store_waitstatus (TYPE_3__*,int) ;
 struct inf* waiting_inf ;
 int warning (char*,scalar_t__,char*) ;

error_t
S_proc_wait_reply (mach_port_t reply, error_t err,
     int status, int sigcode, rusage_t rusage, pid_t pid)
{
  struct inf *inf = waiting_inf;

  inf_debug (inf, "err = %s, pid = %d, status = 0x%x, sigcode = %d",
      err ? safe_strerror (err) : "0", pid, status, sigcode);

  if (err && proc_wait_pid && (!inf->task || !inf->task->port))





    inf_task_died_status (inf);

  if (--proc_waits_pending == 0)


    proc_wait_pid = 0;

  inf_debug (inf, "waits pending now: %d", proc_waits_pending);

  if (err)
    {
      if (err != EINTR)
 {
   warning ("Can't wait for pid %d: %s", inf->pid, safe_strerror (err));
   inf->no_wait = 1;


   inf_set_traced (inf, 0);
 }
    }
  else if (pid == inf->pid)
    {
      store_waitstatus (&inf->wait.status, status);
      if (inf->wait.status.kind == TARGET_WAITKIND_STOPPED)


 {
   inf_debug (inf, "process has stopped itself");
   inf->stopped = 1;
 }
    }
  else
    inf->wait.suppress = 1;

  return 0;
}
