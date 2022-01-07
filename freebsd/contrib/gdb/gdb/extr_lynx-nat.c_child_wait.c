
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union wait {int w_tid; int w_status; } ;
struct TYPE_2__ {void* sig; int integer; } ;
struct target_waitstatus {TYPE_1__ value; void* kind; } ;
typedef int ptid_t ;
typedef int PTRACE_ARG3_TYPE ;


 int BUILDPID (int,int) ;
 int EINTR ;
 int MERGEPID (int,int) ;
 int PIDGET (int) ;
 int PTRACE_CONT ;
 int PTRACE_GETTRACESIG ;
 int SIGNEWTHREAD ;
 int SIGTHREADEXIT ;
 scalar_t__ SIGTRAP ;
 void* TARGET_SIGNAL_0 ;
 void* TARGET_SIGNAL_UNKNOWN ;
 void* TARGET_WAITKIND_EXITED ;
 void* TARGET_WAITKIND_SIGNALLED ;
 void* TARGET_WAITKIND_SPURIOUS ;
 void* TARGET_WAITKIND_STOPPED ;
 scalar_t__ TIDGET (int) ;
 int WEXITSTATUS (union wait) ;
 scalar_t__ WIFEXITED (union wait) ;
 scalar_t__ WIFSTOPPED (union wait) ;
 scalar_t__ WSTOPSIG (union wait) ;
 scalar_t__ WTERMSIG (union wait) ;
 int add_thread (int) ;
 int clear_sigint_trap () ;
 int errno ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 scalar_t__ in_thread_list (int) ;
 int inferior_ptid ;
 int ptrace (int ,int,int ,int ) ;
 int safe_strerror (int) ;
 int set_sigint_trap () ;
 int store_waitstatus (struct target_waitstatus*,int ) ;
 void* target_signal_from_host (scalar_t__) ;
 int wait (union wait*) ;

ptid_t
child_wait (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  int save_errno;
  int thread;
  union wait status;
  int pid;

  while (1)
    {
      int sig;

      set_sigint_trap ();

      pid = wait (&status);

      save_errno = errno;

      clear_sigint_trap ();

      if (pid == -1)
 {
   if (save_errno == EINTR)
     continue;
   fprintf_unfiltered (gdb_stderr, "Child process unexpectedly missing: %s.\n",
         safe_strerror (save_errno));

   ourstatus->kind = TARGET_WAITKIND_SIGNALLED;
   ourstatus->value.sig = TARGET_SIGNAL_UNKNOWN;
   return -1;
 }

      if (pid != PIDGET (inferior_ptid))
 continue;

      thread = status.w_tid;




      if (TIDGET (inferior_ptid) == 0 && thread != 0)
 {
   inferior_ptid = MERGEPID (PIDGET (inferior_ptid), thread);
   add_thread (inferior_ptid);
 }

      ptid = BUILDPID (pid, thread);


      if (thread == 0)
 inferior_ptid = ptid;


      if (WIFSTOPPED (status)
   && WSTOPSIG (status) == SIGTRAP
   && !in_thread_list (ptid))
 {
   int realsig;

   realsig = ptrace (PTRACE_GETTRACESIG, PIDGET (ptid),
                     (PTRACE_ARG3_TYPE) 0, 0);

   if (realsig == SIGNEWTHREAD)
     {


       ourstatus->kind = TARGET_WAITKIND_SPURIOUS;
       ourstatus->value.sig = TARGET_SIGNAL_0;
       return ptid;
     }
   else
     error ("Signal for unknown thread was not SIGNEWTHREAD");
 }


      else if (WIFSTOPPED (status)
        && WSTOPSIG (status) == SIGTRAP
        && in_thread_list (ptid))
 {
   int realsig;

   realsig = ptrace (PTRACE_GETTRACESIG, PIDGET (ptid),
                     (PTRACE_ARG3_TYPE) 0, 0);

   if (realsig == SIGTHREADEXIT)
     {
       ptrace (PTRACE_CONT, PIDGET (ptid), (PTRACE_ARG3_TYPE) 0, 0);
       continue;
     }
 }
      store_waitstatus (ourstatus, status.w_status);


      return ptid;
    }
}
