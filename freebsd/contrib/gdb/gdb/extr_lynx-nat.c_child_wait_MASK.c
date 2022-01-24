#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union wait {int w_tid; int /*<<< orphan*/  w_status; } ;
struct TYPE_2__ {void* sig; int /*<<< orphan*/  integer; } ;
struct target_waitstatus {TYPE_1__ value; void* kind; } ;
typedef  int ptid_t ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINTR ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  PTRACE_GETTRACESIG ; 
 int SIGNEWTHREAD ; 
 int SIGTHREADEXIT ; 
 scalar_t__ SIGTRAP ; 
 void* TARGET_SIGNAL_0 ; 
 void* TARGET_SIGNAL_UNKNOWN ; 
 void* TARGET_WAITKIND_EXITED ; 
 void* TARGET_WAITKIND_SIGNALLED ; 
 void* TARGET_WAITKIND_SPURIOUS ; 
 void* TARGET_WAITKIND_STOPPED ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (union wait) ; 
 scalar_t__ FUNC5 (union wait) ; 
 scalar_t__ FUNC6 (union wait) ; 
 scalar_t__ FUNC7 (union wait) ; 
 scalar_t__ FUNC8 (union wait) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 scalar_t__ FUNC13 (int) ; 
 int inferior_ptid ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct target_waitstatus*,int /*<<< orphan*/ ) ; 
 void* FUNC18 (scalar_t__) ; 
 int FUNC19 (union wait*) ; 

ptid_t
FUNC20 (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  int save_errno;
  int thread;
  union wait status;
  int pid;

  while (1)
    {
      int sig;

      FUNC16 ();	/* Causes SIGINT to be passed on to the
				   attached process. */
      pid = FUNC19 (&status);

      save_errno = errno;

      FUNC10 ();

      if (pid == -1)
	{
	  if (save_errno == EINTR)
	    continue;
	  FUNC12 (gdb_stderr, "Child process unexpectedly missing: %s.\n",
			      FUNC15 (save_errno));
	  /* Claim it exited with unknown signal.  */
	  ourstatus->kind = TARGET_WAITKIND_SIGNALLED;
	  ourstatus->value.sig = TARGET_SIGNAL_UNKNOWN;
	  return -1;
	}

      if (pid != FUNC2 (inferior_ptid))	/* Some other process?!? */
	continue;

      thread = status.w_tid;	/* Get thread id from status */

      /* Initial thread value can only be acquired via wait, so we have to
         resort to this hack.  */

      if (FUNC3 (inferior_ptid) == 0 && thread != 0)
	{
	  inferior_ptid = FUNC1 (FUNC2 (inferior_ptid), thread);
	  FUNC9 (inferior_ptid);
	}

      ptid = FUNC0 (pid, thread);

      /* We've become a single threaded process again.  */
      if (thread == 0)
	inferior_ptid = ptid;

      /* Check for thread creation.  */
      if (FUNC6 (status)
	  && FUNC7 (status) == SIGTRAP
	  && !FUNC13 (ptid))
	{
	  int realsig;

	  realsig = FUNC14 (PTRACE_GETTRACESIG, FUNC2 (ptid),
	                    (PTRACE_ARG3_TYPE) 0, 0);

	  if (realsig == SIGNEWTHREAD)
	    {
	      /* It's a new thread notification.  We don't want to much with
	         realsig -- the code in wait_for_inferior expects SIGTRAP. */
	      ourstatus->kind = TARGET_WAITKIND_SPURIOUS;
	      ourstatus->value.sig = TARGET_SIGNAL_0;
	      return ptid;
	    }
	  else
	    FUNC11 ("Signal for unknown thread was not SIGNEWTHREAD");
	}

      /* Check for thread termination.  */
      else if (FUNC6 (status)
	       && FUNC7 (status) == SIGTRAP
	       && FUNC13 (ptid))
	{
	  int realsig;

	  realsig = FUNC14 (PTRACE_GETTRACESIG, FUNC2 (ptid),
	                    (PTRACE_ARG3_TYPE) 0, 0);

	  if (realsig == SIGTHREADEXIT)
	    {
	      FUNC14 (PTRACE_CONT, FUNC2 (ptid), (PTRACE_ARG3_TYPE) 0, 0);
	      continue;
	    }
	}

#ifdef SPARC
      /* SPARC Lynx uses an byte reversed wait status; we must use the
         host macros to access it.  These lines just a copy of
         store_waitstatus.  We can't use CHILD_SPECIAL_WAITSTATUS
         because target.c can't include the Lynx <sys/wait.h>.  */
      if (WIFEXITED (status))
	{
	  ourstatus->kind = TARGET_WAITKIND_EXITED;
	  ourstatus->value.integer = WEXITSTATUS (status);
	}
      else if (!WIFSTOPPED (status))
	{
	  ourstatus->kind = TARGET_WAITKIND_SIGNALLED;
	  ourstatus->value.sig =
	    target_signal_from_host (WTERMSIG (status));
	}
      else
	{
	  ourstatus->kind = TARGET_WAITKIND_STOPPED;
	  ourstatus->value.sig =
	    target_signal_from_host (WSTOPSIG (status));
	}
#else
      FUNC17 (ourstatus, status.w_status);
#endif

      return ptid;
    }
}