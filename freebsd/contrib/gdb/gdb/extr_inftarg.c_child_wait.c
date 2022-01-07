
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sig; } ;
struct target_waitstatus {int kind; TYPE_1__ value; } ;
typedef int ptid_t ;
typedef enum target_waitkind { ____Placeholder_target_waitkind } target_waitkind ;


 int EINTR ;
 int PIDGET (int ) ;
 int TARGET_SIGNAL_UNKNOWN ;
 int TARGET_WAITKIND_SIGNALLED ;
 int TARGET_WAITKIND_SPURIOUS ;
 int clear_sigint_trap () ;
 int clear_sigio_trap () ;
 int errno ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 int inferior_ptid ;
 int pid_to_ptid (int) ;
 int ptrace_wait (int ,int*) ;
 int safe_strerror (int) ;
 int set_sigint_trap () ;
 int set_sigio_trap () ;
 int store_waitstatus (struct target_waitstatus*,int) ;
 scalar_t__ target_has_exited (int,int,int*) ;
 int target_thread_alive (int ) ;

__attribute__((used)) static ptid_t
child_wait (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  int save_errno;
  int status;
  char *execd_pathname = ((void*)0);
  int exit_status;
  int related_pid;
  int syscall_id;
  enum target_waitkind kind;
  int pid;

  do
    {
      set_sigint_trap ();

      set_sigio_trap ();

      pid = ptrace_wait (inferior_ptid, &status);

      save_errno = errno;

      clear_sigio_trap ();

      clear_sigint_trap ();

      if (pid == -1)
 {
   if (save_errno == EINTR)
     continue;

   fprintf_unfiltered (gdb_stderr, "Child process unexpectedly missing: %s.\n",
         safe_strerror (save_errno));


   ourstatus->kind = TARGET_WAITKIND_SIGNALLED;
   ourstatus->value.sig = TARGET_SIGNAL_UNKNOWN;
   return pid_to_ptid (-1);
 }



      if (target_has_exited (pid, status, &exit_status))
 {

   continue;
 }

      if (!target_thread_alive (pid_to_ptid (pid)))
 {
   ourstatus->kind = TARGET_WAITKIND_SPURIOUS;
   return pid_to_ptid (pid);
 }
      } while (pid != PIDGET (inferior_ptid));

  store_waitstatus (ourstatus, status);
  return pid_to_ptid (pid);
}
